import 'dart:convert';
import 'dart:typed_data';

import 'proto/dart/constants.pbenum.dart';
import 'proto/dart/network_ctrl.pb.dart';
import 'proto/dart/wifi_config.pb.dart';
import 'proto/dart/wifi_scan.pb.dart';
import 'proto/dart/session.pb.dart';
import 'security.dart';

import 'package:esp_softap_provisioning/src/connection_models.dart';

import 'transport.dart';

class Provisioning {
  Transport transport;
  Security security;

  Provisioning({required this.transport, required this.security});

  Future<bool> establishSession() async {
    try {
      SessionData responseData = SessionData();
      await transport.connect();
      while (true) {
        var request = await security.securitySession(responseData);
        if (request == null) {
          return true;
        }
        var response = await transport.sendReceive(
            'prov-session', request.writeToBuffer());
        if (response.isEmpty) {
          throw Exception('Empty response');
        }
        responseData = SessionData.fromBuffer(response);
      }
    } catch (e) {
      print('EstablishSession error $e');
      return false;
    }
  }

  Future<void> dispose() async {
    return transport.disconnect();
  }

  Future<List<Map<String, dynamic>>?> startScanWiFi() async {
    return await scan();
  }

  Future<WiFiScanPayload> startScanResponse(Uint8List data) async {
    var respPayload = WiFiScanPayload.fromBuffer(await security.decrypt(data));
    if (respPayload.msg != WiFiScanMsgType.TypeRespScanStart) {
      throw Exception('Invalid expected message type $respPayload');
    }
    return respPayload;
  }

  Future<WiFiScanPayload> startScanRequest(
      {bool blocking = true,
      bool passive = false,
      int groupChannels = 5,
      int periodMs = 0}) async {
    WiFiScanPayload payload = WiFiScanPayload();
    payload.msg = WiFiScanMsgType.TypeCmdScanStart;

    CmdScanStart scanStart = CmdScanStart();
    scanStart.blocking = blocking;
    scanStart.passive = passive;
    scanStart.groupChannels = groupChannels;
    scanStart.periodMs = periodMs;
    payload.cmdScanStart = scanStart;
    var reqData = await security.encrypt(payload.writeToBuffer());
    var respData = await transport.sendReceive('prov-scan', reqData);
    return startScanResponse(respData);
  }

  Future<WiFiScanPayload> scanStatusResponse(Uint8List data) async {
    var respPayload = WiFiScanPayload.fromBuffer(await security.decrypt(data));
    if (respPayload.msg != WiFiScanMsgType.TypeRespScanStatus) {
      throw Exception('Invalid expected message type $respPayload');
    }
    return respPayload;
  }

  Future<WiFiScanPayload> scanStatusRequest() async {
    print('scanStatusRequest started');
    WiFiScanPayload payload = WiFiScanPayload();
    payload.msg = WiFiScanMsgType.TypeCmdScanStatus;
    print('before encrypt');
    var reqData = await security.encrypt(payload.writeToBuffer());
    print('after encrypt');
    print('before sendreceive');

    var respData = await transport.sendReceive('prov-scan', reqData);
    print('after sendreceive');
    print('before scanStatusResponse');

    return scanStatusResponse(respData);
  }

  Future<List<Map<String, dynamic>>> scanResultRequest(
      {int startIndex = 0, int count = 0}) async {
    WiFiScanPayload payload = WiFiScanPayload();
    payload.msg = WiFiScanMsgType.TypeCmdScanResult;

    CmdScanResult cmdScanResult = new CmdScanResult();
    cmdScanResult.startIndex = startIndex;
    cmdScanResult.count = count;

    payload.cmdScanResult = cmdScanResult;
    print('++++ aaaa ++++');
    var reqData = await security.encrypt(payload.writeToBuffer());
    print('++++ xxxx ++++');
    var respData = await transport.sendReceive('prov-scan', reqData);
    print('++++ yyyyy ++++');
    return scanResultResponse(respData);
  }

  Future<List<Map<String, dynamic>>> scanResultResponse(Uint8List data) async {
    var respPayload = WiFiScanPayload.fromBuffer(await security.decrypt(data));
    if (respPayload.msg != WiFiScanMsgType.TypeRespScanResult) {
      throw Exception('Invalid expected message type $respPayload');
    }
    List<Map<String, dynamic>> ret =
        List<Map<String, dynamic>>.empty(growable: true);
    for (var entry in respPayload.respScanResult.entries) {
      ret.add({
        'ssid': utf8.decode(entry.ssid),
        'channel': entry.channel,
        'rssi': entry.rssi,
        'bssid': entry.bssid,
        'auth': entry.auth.toString(),
      });
    }
    return ret;
  }

  Future<List<Map<String, dynamic>>?> scan(
      {bool blocking = true,
      bool passive = false,
      int groupChannels = 5,
      int periodMs = 0}) async {
    try {
      print('Scan Started');
      await startScanRequest(
          blocking: blocking,
          passive: passive,
          groupChannels: groupChannels,
          periodMs: periodMs);
      var status = await scanStatusRequest();
      var resultCount = status.respScanStatus.resultCount;
      List<Map<String, dynamic>> ret = List.empty(growable: true);
      if (resultCount > 0) {
        var index = 0;
        var remaining = resultCount;
        while (remaining > 0) {
          var count = remaining > 4 ? 4 : remaining;
          var data = await scanResultRequest(startIndex: index, count: count);
          ret.addAll(data);
          remaining -= count;
          index += count;
        }
      }
      return ret;
    } catch (e) {
      print('Error scan wifi $e');
    }
    return null;
  }

  Future<bool> sendWifiConfig({String? ssid, String? password}) async {
    var payload = WiFiConfigPayload();
    payload.msg = WiFiConfigMsgType.TypeCmdSetConfig;

    var cmdSetConfig = CmdSetConfig();
    cmdSetConfig.ssid = utf8.encode(ssid ?? '');
    cmdSetConfig.passphrase = utf8.encode(password ?? '');
    payload.cmdSetConfig = cmdSetConfig;
    var reqData = await security.encrypt(payload.writeToBuffer());
    var respData = await transport.sendReceive('prov-config', reqData);
    var respRaw = await security.decrypt(respData);
    var respPayload = WiFiConfigPayload.fromBuffer(respRaw);
    return (respPayload.respSetConfig.status == Status.Success);
  }

  Future<bool> applyWifiConfig() async {
    var payload = WiFiConfigPayload();
    payload.msg = WiFiConfigMsgType.TypeCmdApplyConfig;
    var reqData = await security.encrypt(payload.writeToBuffer());
    var respData = await transport.sendReceive('prov-config', reqData);
    var respRaw = await security.decrypt(respData);
    var respPayload = WiFiConfigPayload.fromBuffer(respRaw);
    return (respPayload.respApplyConfig.status == Status.Success);
  }

  Future<ConnectionStatus?> getStatus() async {
    var payload = WiFiConfigPayload();
    payload.msg = WiFiConfigMsgType.TypeCmdGetStatus;

    var cmdGetStatus = CmdGetStatus();
    payload.cmdGetStatus = cmdGetStatus;

    var reqData = await security.encrypt(payload.writeToBuffer());
    var respData = await transport.sendReceive('prov-config', reqData);
    var respRaw = await security.decrypt(respData);
    var respPayload = WiFiConfigPayload.fromBuffer(respRaw);

    // Validate before reading, as the scan paths do. Without this, any
    // response that is not a RespGetStatus -- an empty body, an error
    // response, a stale reply, or garbage from a desynchronised keystream --
    // decodes into a default-valued RespGetStatus whose sta_state is 0, and
    // 0 is `Connected`. That turns "I could not tell" into a confident
    // "yes, it joined your network", which is the one answer a caller of
    // this method must never be given wrongly.
    //
    // TypeRespGetStatus is enum value 1, so unlike sta_state == 0 it is not
    // a proto3 default and is genuinely present on the wire.
    if (respPayload.msg != WiFiConfigMsgType.TypeRespGetStatus) {
      throw Exception('Invalid expected message type $respPayload');
    }
    if (respPayload.whichPayload() !=
        WiFiConfigPayload_Payload.respGetStatus) {
      throw Exception('Response carried no status payload $respPayload');
    }

    // Oneof membership is written on the wire even for default-valued
    // members, so this distinguishes a real Connected/ConnectionFailed from
    // an absent one, where `sta_state` alone cannot.
    // staState 0 is Connected; compared by value because wifi_constants'
    // enums are imported here only under a prefix.
    if (respPayload.respGetStatus.staState.value == 0 &&
        respPayload.respGetStatus.whichState() !=
            RespGetStatus_State.connected) {
      throw Exception('Status reported Connected with no connection details');
    }

    if (respPayload.respGetStatus.staState.value == 0) {
      return ConnectionStatus(
          state: WifiConnectionState.Connected,
          ip: respPayload.respGetStatus.connected.ip4Addr);
    } else if (respPayload.respGetStatus.staState.value == 1) {
      return ConnectionStatus(state: WifiConnectionState.Connecting);
    } else if (respPayload.respGetStatus.staState.value == 2) {
      return ConnectionStatus(state: WifiConnectionState.Disconnected);
    } else if (respPayload.respGetStatus.staState.value == 3) {
      if (respPayload.respGetStatus.failReason.value == 0) {
        return ConnectionStatus(
          state: WifiConnectionState.ConnectionFailed,
          failedReason: WifiConnectFailedReason.AuthError,
        );
      } else if (respPayload.respGetStatus.failReason.value == 1) {
        return ConnectionStatus(
          state: WifiConnectionState.ConnectionFailed,
          failedReason: WifiConnectFailedReason.NetworkNotFound,
        );
      }
      return ConnectionStatus(state: WifiConnectionState.ConnectionFailed);
    }

    return null;
  }

  /// Clears the device's provisioning state machine after a refused join, so
  /// corrected credentials can be sent over the same session.
  ///
  /// This is what makes a wrong WiFi password recoverable without the factory
  /// reset button. After a refused join the device sits in a failure state,
  /// and while it will still accept a second [sendWifiConfig], the
  /// [applyWifiConfig] that has to follow is rejected from there. Resetting
  /// first puts it back to "started", so the sequence is:
  ///
  /// ```dart
  /// await prov.resetWifiState();
  /// await prov.sendWifiConfig(ssid: ssid, password: correctedPassword);
  /// await prov.applyWifiConfig();
  /// ```
  ///
  /// Talks to the `prov-ctrl` endpoint, which the device registers whenever
  /// provisioning is running. Returns false if the device declined — most
  /// likely because it is not in a failure state, which is also the harmless
  /// case, since there is then nothing to clear.
  Future<bool> resetWifiState() async {
    var payload = NetworkCtrlPayload();
    payload.msg = NetworkCtrlMsgType.TypeCmdCtrlWifiReset;
    payload.cmdCtrlWifiReset = CmdCtrlWifiReset();

    var reqData = await security.encrypt(payload.writeToBuffer());
    var respData = await transport.sendReceive('prov-ctrl', reqData);
    var respRaw = await security.decrypt(respData);
    var respPayload = NetworkCtrlPayload.fromBuffer(respRaw);

    // Same validation the scan paths do, and for the same reason getStatus
    // now does it: Status.Success is the proto3 zero value, so an empty or
    // mistyped response would otherwise read as a confident success.
    if (respPayload.msg != NetworkCtrlMsgType.TypeRespCtrlWifiReset) {
      throw Exception('Invalid expected message type $respPayload');
    }
    if (respPayload.whichPayload() !=
        NetworkCtrlPayload_Payload.respCtrlWifiReset) {
      throw Exception('Response carried no reset payload $respPayload');
    }
    return respPayload.status == Status.Success;
  }

  Future<Uint8List> sendReceiveCustomData(Uint8List data,
      {int packageSize = 256}) async {
    var i = data.length;
    var offset = 0;
    List<int> ret = [];
    while (i > 0) {
      var needToSend = data.sublist(offset, i < packageSize ? i : packageSize);
      var encrypted = await security.encrypt(needToSend);
      var newData = await transport.sendReceive('custom-data', encrypted);

      if (newData.length > 0) {
        var decrypted = await security.decrypt(newData);
        ret += List.from(decrypted);
      }
      i -= packageSize;
    }
    return Uint8List.fromList(ret);
  }
}

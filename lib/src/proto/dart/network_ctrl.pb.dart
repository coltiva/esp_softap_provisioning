//
//  Generated code. Do not modify.
//  source: network_ctrl.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'constants.pbenum.dart' as $1;
import 'network_ctrl.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'network_ctrl.pbenum.dart';

class CmdCtrlWifiReset extends $pb.GeneratedMessage {
  factory CmdCtrlWifiReset() => create();
  CmdCtrlWifiReset._() : super();
  factory CmdCtrlWifiReset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CmdCtrlWifiReset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CmdCtrlWifiReset', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CmdCtrlWifiReset clone() => CmdCtrlWifiReset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CmdCtrlWifiReset copyWith(void Function(CmdCtrlWifiReset) updates) => super.copyWith((message) => updates(message as CmdCtrlWifiReset)) as CmdCtrlWifiReset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CmdCtrlWifiReset create() => CmdCtrlWifiReset._();
  CmdCtrlWifiReset createEmptyInstance() => create();
  static $pb.PbList<CmdCtrlWifiReset> createRepeated() => $pb.PbList<CmdCtrlWifiReset>();
  @$core.pragma('dart2js:noInline')
  static CmdCtrlWifiReset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CmdCtrlWifiReset>(create);
  static CmdCtrlWifiReset? _defaultInstance;
}

class RespCtrlWifiReset extends $pb.GeneratedMessage {
  factory RespCtrlWifiReset() => create();
  RespCtrlWifiReset._() : super();
  factory RespCtrlWifiReset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RespCtrlWifiReset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RespCtrlWifiReset', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RespCtrlWifiReset clone() => RespCtrlWifiReset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RespCtrlWifiReset copyWith(void Function(RespCtrlWifiReset) updates) => super.copyWith((message) => updates(message as RespCtrlWifiReset)) as RespCtrlWifiReset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RespCtrlWifiReset create() => RespCtrlWifiReset._();
  RespCtrlWifiReset createEmptyInstance() => create();
  static $pb.PbList<RespCtrlWifiReset> createRepeated() => $pb.PbList<RespCtrlWifiReset>();
  @$core.pragma('dart2js:noInline')
  static RespCtrlWifiReset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RespCtrlWifiReset>(create);
  static RespCtrlWifiReset? _defaultInstance;
}

class CmdCtrlWifiReprov extends $pb.GeneratedMessage {
  factory CmdCtrlWifiReprov() => create();
  CmdCtrlWifiReprov._() : super();
  factory CmdCtrlWifiReprov.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CmdCtrlWifiReprov.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CmdCtrlWifiReprov', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CmdCtrlWifiReprov clone() => CmdCtrlWifiReprov()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CmdCtrlWifiReprov copyWith(void Function(CmdCtrlWifiReprov) updates) => super.copyWith((message) => updates(message as CmdCtrlWifiReprov)) as CmdCtrlWifiReprov;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CmdCtrlWifiReprov create() => CmdCtrlWifiReprov._();
  CmdCtrlWifiReprov createEmptyInstance() => create();
  static $pb.PbList<CmdCtrlWifiReprov> createRepeated() => $pb.PbList<CmdCtrlWifiReprov>();
  @$core.pragma('dart2js:noInline')
  static CmdCtrlWifiReprov getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CmdCtrlWifiReprov>(create);
  static CmdCtrlWifiReprov? _defaultInstance;
}

class RespCtrlWifiReprov extends $pb.GeneratedMessage {
  factory RespCtrlWifiReprov() => create();
  RespCtrlWifiReprov._() : super();
  factory RespCtrlWifiReprov.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RespCtrlWifiReprov.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RespCtrlWifiReprov', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RespCtrlWifiReprov clone() => RespCtrlWifiReprov()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RespCtrlWifiReprov copyWith(void Function(RespCtrlWifiReprov) updates) => super.copyWith((message) => updates(message as RespCtrlWifiReprov)) as RespCtrlWifiReprov;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RespCtrlWifiReprov create() => RespCtrlWifiReprov._();
  RespCtrlWifiReprov createEmptyInstance() => create();
  static $pb.PbList<RespCtrlWifiReprov> createRepeated() => $pb.PbList<RespCtrlWifiReprov>();
  @$core.pragma('dart2js:noInline')
  static RespCtrlWifiReprov getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RespCtrlWifiReprov>(create);
  static RespCtrlWifiReprov? _defaultInstance;
}

class CmdCtrlThreadReset extends $pb.GeneratedMessage {
  factory CmdCtrlThreadReset() => create();
  CmdCtrlThreadReset._() : super();
  factory CmdCtrlThreadReset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CmdCtrlThreadReset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CmdCtrlThreadReset', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CmdCtrlThreadReset clone() => CmdCtrlThreadReset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CmdCtrlThreadReset copyWith(void Function(CmdCtrlThreadReset) updates) => super.copyWith((message) => updates(message as CmdCtrlThreadReset)) as CmdCtrlThreadReset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CmdCtrlThreadReset create() => CmdCtrlThreadReset._();
  CmdCtrlThreadReset createEmptyInstance() => create();
  static $pb.PbList<CmdCtrlThreadReset> createRepeated() => $pb.PbList<CmdCtrlThreadReset>();
  @$core.pragma('dart2js:noInline')
  static CmdCtrlThreadReset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CmdCtrlThreadReset>(create);
  static CmdCtrlThreadReset? _defaultInstance;
}

class RespCtrlThreadReset extends $pb.GeneratedMessage {
  factory RespCtrlThreadReset() => create();
  RespCtrlThreadReset._() : super();
  factory RespCtrlThreadReset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RespCtrlThreadReset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RespCtrlThreadReset', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RespCtrlThreadReset clone() => RespCtrlThreadReset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RespCtrlThreadReset copyWith(void Function(RespCtrlThreadReset) updates) => super.copyWith((message) => updates(message as RespCtrlThreadReset)) as RespCtrlThreadReset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RespCtrlThreadReset create() => RespCtrlThreadReset._();
  RespCtrlThreadReset createEmptyInstance() => create();
  static $pb.PbList<RespCtrlThreadReset> createRepeated() => $pb.PbList<RespCtrlThreadReset>();
  @$core.pragma('dart2js:noInline')
  static RespCtrlThreadReset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RespCtrlThreadReset>(create);
  static RespCtrlThreadReset? _defaultInstance;
}

class CmdCtrlThreadReprov extends $pb.GeneratedMessage {
  factory CmdCtrlThreadReprov() => create();
  CmdCtrlThreadReprov._() : super();
  factory CmdCtrlThreadReprov.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CmdCtrlThreadReprov.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CmdCtrlThreadReprov', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CmdCtrlThreadReprov clone() => CmdCtrlThreadReprov()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CmdCtrlThreadReprov copyWith(void Function(CmdCtrlThreadReprov) updates) => super.copyWith((message) => updates(message as CmdCtrlThreadReprov)) as CmdCtrlThreadReprov;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CmdCtrlThreadReprov create() => CmdCtrlThreadReprov._();
  CmdCtrlThreadReprov createEmptyInstance() => create();
  static $pb.PbList<CmdCtrlThreadReprov> createRepeated() => $pb.PbList<CmdCtrlThreadReprov>();
  @$core.pragma('dart2js:noInline')
  static CmdCtrlThreadReprov getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CmdCtrlThreadReprov>(create);
  static CmdCtrlThreadReprov? _defaultInstance;
}

class RespCtrlThreadReprov extends $pb.GeneratedMessage {
  factory RespCtrlThreadReprov() => create();
  RespCtrlThreadReprov._() : super();
  factory RespCtrlThreadReprov.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RespCtrlThreadReprov.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RespCtrlThreadReprov', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RespCtrlThreadReprov clone() => RespCtrlThreadReprov()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RespCtrlThreadReprov copyWith(void Function(RespCtrlThreadReprov) updates) => super.copyWith((message) => updates(message as RespCtrlThreadReprov)) as RespCtrlThreadReprov;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RespCtrlThreadReprov create() => RespCtrlThreadReprov._();
  RespCtrlThreadReprov createEmptyInstance() => create();
  static $pb.PbList<RespCtrlThreadReprov> createRepeated() => $pb.PbList<RespCtrlThreadReprov>();
  @$core.pragma('dart2js:noInline')
  static RespCtrlThreadReprov getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RespCtrlThreadReprov>(create);
  static RespCtrlThreadReprov? _defaultInstance;
}

enum NetworkCtrlPayload_Payload {
  cmdCtrlWifiReset, 
  respCtrlWifiReset, 
  cmdCtrlWifiReprov, 
  respCtrlWifiReprov, 
  cmdCtrlThreadReset, 
  respCtrlThreadReset, 
  cmdCtrlThreadReprov, 
  respCtrlThreadReprov, 
  notSet
}

class NetworkCtrlPayload extends $pb.GeneratedMessage {
  factory NetworkCtrlPayload({
    NetworkCtrlMsgType? msg,
    $1.Status? status,
    CmdCtrlWifiReset? cmdCtrlWifiReset,
    RespCtrlWifiReset? respCtrlWifiReset,
    CmdCtrlWifiReprov? cmdCtrlWifiReprov,
    RespCtrlWifiReprov? respCtrlWifiReprov,
    CmdCtrlThreadReset? cmdCtrlThreadReset,
    RespCtrlThreadReset? respCtrlThreadReset,
    CmdCtrlThreadReprov? cmdCtrlThreadReprov,
    RespCtrlThreadReprov? respCtrlThreadReprov,
  }) {
    final $result = create();
    if (msg != null) {
      $result.msg = msg;
    }
    if (status != null) {
      $result.status = status;
    }
    if (cmdCtrlWifiReset != null) {
      $result.cmdCtrlWifiReset = cmdCtrlWifiReset;
    }
    if (respCtrlWifiReset != null) {
      $result.respCtrlWifiReset = respCtrlWifiReset;
    }
    if (cmdCtrlWifiReprov != null) {
      $result.cmdCtrlWifiReprov = cmdCtrlWifiReprov;
    }
    if (respCtrlWifiReprov != null) {
      $result.respCtrlWifiReprov = respCtrlWifiReprov;
    }
    if (cmdCtrlThreadReset != null) {
      $result.cmdCtrlThreadReset = cmdCtrlThreadReset;
    }
    if (respCtrlThreadReset != null) {
      $result.respCtrlThreadReset = respCtrlThreadReset;
    }
    if (cmdCtrlThreadReprov != null) {
      $result.cmdCtrlThreadReprov = cmdCtrlThreadReprov;
    }
    if (respCtrlThreadReprov != null) {
      $result.respCtrlThreadReprov = respCtrlThreadReprov;
    }
    return $result;
  }
  NetworkCtrlPayload._() : super();
  factory NetworkCtrlPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkCtrlPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, NetworkCtrlPayload_Payload> _NetworkCtrlPayload_PayloadByTag = {
    11 : NetworkCtrlPayload_Payload.cmdCtrlWifiReset,
    12 : NetworkCtrlPayload_Payload.respCtrlWifiReset,
    13 : NetworkCtrlPayload_Payload.cmdCtrlWifiReprov,
    14 : NetworkCtrlPayload_Payload.respCtrlWifiReprov,
    15 : NetworkCtrlPayload_Payload.cmdCtrlThreadReset,
    16 : NetworkCtrlPayload_Payload.respCtrlThreadReset,
    17 : NetworkCtrlPayload_Payload.cmdCtrlThreadReprov,
    18 : NetworkCtrlPayload_Payload.respCtrlThreadReprov,
    0 : NetworkCtrlPayload_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkCtrlPayload', createEmptyInstance: create)
    ..oo(0, [11, 12, 13, 14, 15, 16, 17, 18])
    ..e<NetworkCtrlMsgType>(1, _omitFieldNames ? '' : 'msg', $pb.PbFieldType.OE, defaultOrMaker: NetworkCtrlMsgType.TypeCtrlReserved, valueOf: NetworkCtrlMsgType.valueOf, enumValues: NetworkCtrlMsgType.values)
    ..e<$1.Status>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $1.Status.Success, valueOf: $1.Status.valueOf, enumValues: $1.Status.values)
    ..aOM<CmdCtrlWifiReset>(11, _omitFieldNames ? '' : 'cmdCtrlWifiReset', subBuilder: CmdCtrlWifiReset.create)
    ..aOM<RespCtrlWifiReset>(12, _omitFieldNames ? '' : 'respCtrlWifiReset', subBuilder: RespCtrlWifiReset.create)
    ..aOM<CmdCtrlWifiReprov>(13, _omitFieldNames ? '' : 'cmdCtrlWifiReprov', subBuilder: CmdCtrlWifiReprov.create)
    ..aOM<RespCtrlWifiReprov>(14, _omitFieldNames ? '' : 'respCtrlWifiReprov', subBuilder: RespCtrlWifiReprov.create)
    ..aOM<CmdCtrlThreadReset>(15, _omitFieldNames ? '' : 'cmdCtrlThreadReset', subBuilder: CmdCtrlThreadReset.create)
    ..aOM<RespCtrlThreadReset>(16, _omitFieldNames ? '' : 'respCtrlThreadReset', subBuilder: RespCtrlThreadReset.create)
    ..aOM<CmdCtrlThreadReprov>(17, _omitFieldNames ? '' : 'cmdCtrlThreadReprov', subBuilder: CmdCtrlThreadReprov.create)
    ..aOM<RespCtrlThreadReprov>(18, _omitFieldNames ? '' : 'respCtrlThreadReprov', subBuilder: RespCtrlThreadReprov.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkCtrlPayload clone() => NetworkCtrlPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkCtrlPayload copyWith(void Function(NetworkCtrlPayload) updates) => super.copyWith((message) => updates(message as NetworkCtrlPayload)) as NetworkCtrlPayload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkCtrlPayload create() => NetworkCtrlPayload._();
  NetworkCtrlPayload createEmptyInstance() => create();
  static $pb.PbList<NetworkCtrlPayload> createRepeated() => $pb.PbList<NetworkCtrlPayload>();
  @$core.pragma('dart2js:noInline')
  static NetworkCtrlPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkCtrlPayload>(create);
  static NetworkCtrlPayload? _defaultInstance;

  NetworkCtrlPayload_Payload whichPayload() => _NetworkCtrlPayload_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  NetworkCtrlMsgType get msg => $_getN(0);
  @$pb.TagNumber(1)
  set msg(NetworkCtrlMsgType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($1.Status v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  @$pb.TagNumber(11)
  CmdCtrlWifiReset get cmdCtrlWifiReset => $_getN(2);
  @$pb.TagNumber(11)
  set cmdCtrlWifiReset(CmdCtrlWifiReset v) { $_setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCmdCtrlWifiReset() => $_has(2);
  @$pb.TagNumber(11)
  void clearCmdCtrlWifiReset() => $_clearField(11);
  @$pb.TagNumber(11)
  CmdCtrlWifiReset ensureCmdCtrlWifiReset() => $_ensure(2);

  @$pb.TagNumber(12)
  RespCtrlWifiReset get respCtrlWifiReset => $_getN(3);
  @$pb.TagNumber(12)
  set respCtrlWifiReset(RespCtrlWifiReset v) { $_setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasRespCtrlWifiReset() => $_has(3);
  @$pb.TagNumber(12)
  void clearRespCtrlWifiReset() => $_clearField(12);
  @$pb.TagNumber(12)
  RespCtrlWifiReset ensureRespCtrlWifiReset() => $_ensure(3);

  @$pb.TagNumber(13)
  CmdCtrlWifiReprov get cmdCtrlWifiReprov => $_getN(4);
  @$pb.TagNumber(13)
  set cmdCtrlWifiReprov(CmdCtrlWifiReprov v) { $_setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasCmdCtrlWifiReprov() => $_has(4);
  @$pb.TagNumber(13)
  void clearCmdCtrlWifiReprov() => $_clearField(13);
  @$pb.TagNumber(13)
  CmdCtrlWifiReprov ensureCmdCtrlWifiReprov() => $_ensure(4);

  @$pb.TagNumber(14)
  RespCtrlWifiReprov get respCtrlWifiReprov => $_getN(5);
  @$pb.TagNumber(14)
  set respCtrlWifiReprov(RespCtrlWifiReprov v) { $_setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasRespCtrlWifiReprov() => $_has(5);
  @$pb.TagNumber(14)
  void clearRespCtrlWifiReprov() => $_clearField(14);
  @$pb.TagNumber(14)
  RespCtrlWifiReprov ensureRespCtrlWifiReprov() => $_ensure(5);

  @$pb.TagNumber(15)
  CmdCtrlThreadReset get cmdCtrlThreadReset => $_getN(6);
  @$pb.TagNumber(15)
  set cmdCtrlThreadReset(CmdCtrlThreadReset v) { $_setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasCmdCtrlThreadReset() => $_has(6);
  @$pb.TagNumber(15)
  void clearCmdCtrlThreadReset() => $_clearField(15);
  @$pb.TagNumber(15)
  CmdCtrlThreadReset ensureCmdCtrlThreadReset() => $_ensure(6);

  @$pb.TagNumber(16)
  RespCtrlThreadReset get respCtrlThreadReset => $_getN(7);
  @$pb.TagNumber(16)
  set respCtrlThreadReset(RespCtrlThreadReset v) { $_setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasRespCtrlThreadReset() => $_has(7);
  @$pb.TagNumber(16)
  void clearRespCtrlThreadReset() => $_clearField(16);
  @$pb.TagNumber(16)
  RespCtrlThreadReset ensureRespCtrlThreadReset() => $_ensure(7);

  @$pb.TagNumber(17)
  CmdCtrlThreadReprov get cmdCtrlThreadReprov => $_getN(8);
  @$pb.TagNumber(17)
  set cmdCtrlThreadReprov(CmdCtrlThreadReprov v) { $_setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasCmdCtrlThreadReprov() => $_has(8);
  @$pb.TagNumber(17)
  void clearCmdCtrlThreadReprov() => $_clearField(17);
  @$pb.TagNumber(17)
  CmdCtrlThreadReprov ensureCmdCtrlThreadReprov() => $_ensure(8);

  @$pb.TagNumber(18)
  RespCtrlThreadReprov get respCtrlThreadReprov => $_getN(9);
  @$pb.TagNumber(18)
  set respCtrlThreadReprov(RespCtrlThreadReprov v) { $_setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasRespCtrlThreadReprov() => $_has(9);
  @$pb.TagNumber(18)
  void clearRespCtrlThreadReprov() => $_clearField(18);
  @$pb.TagNumber(18)
  RespCtrlThreadReprov ensureRespCtrlThreadReprov() => $_ensure(9);

}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

//
//  Generated code. Do not modify.
//  source: network_ctrl.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use networkCtrlMsgTypeDescriptor instead')
const NetworkCtrlMsgType$json = {
  '1': 'NetworkCtrlMsgType',
  '2': [
    {'1': 'TypeCtrlReserved', '2': 0},
    {'1': 'TypeCmdCtrlWifiReset', '2': 1},
    {'1': 'TypeRespCtrlWifiReset', '2': 2},
    {'1': 'TypeCmdCtrlWifiReprov', '2': 3},
    {'1': 'TypeRespCtrlWifiReprov', '2': 4},
    {'1': 'TypeCmdCtrlThreadReset', '2': 5},
    {'1': 'TypeRespCtrlThreadReset', '2': 6},
    {'1': 'TypeCmdCtrlThreadReprov', '2': 7},
    {'1': 'TypeRespCtrlThreadReprov', '2': 8},
  ],
};

/// Descriptor for `NetworkCtrlMsgType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List networkCtrlMsgTypeDescriptor = $convert.base64Decode(
    'ChJOZXR3b3JrQ3RybE1zZ1R5cGUSFAoQVHlwZUN0cmxSZXNlcnZlZBAAEhgKFFR5cGVDbWRDdH'
    'JsV2lmaVJlc2V0EAESGQoVVHlwZVJlc3BDdHJsV2lmaVJlc2V0EAISGQoVVHlwZUNtZEN0cmxX'
    'aWZpUmVwcm92EAMSGgoWVHlwZVJlc3BDdHJsV2lmaVJlcHJvdhAEEhoKFlR5cGVDbWRDdHJsVG'
    'hyZWFkUmVzZXQQBRIbChdUeXBlUmVzcEN0cmxUaHJlYWRSZXNldBAGEhsKF1R5cGVDbWRDdHJs'
    'VGhyZWFkUmVwcm92EAcSHAoYVHlwZVJlc3BDdHJsVGhyZWFkUmVwcm92EAg=');

@$core.Deprecated('Use cmdCtrlWifiResetDescriptor instead')
const CmdCtrlWifiReset$json = {
  '1': 'CmdCtrlWifiReset',
};

/// Descriptor for `CmdCtrlWifiReset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cmdCtrlWifiResetDescriptor = $convert.base64Decode(
    'ChBDbWRDdHJsV2lmaVJlc2V0');

@$core.Deprecated('Use respCtrlWifiResetDescriptor instead')
const RespCtrlWifiReset$json = {
  '1': 'RespCtrlWifiReset',
};

/// Descriptor for `RespCtrlWifiReset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respCtrlWifiResetDescriptor = $convert.base64Decode(
    'ChFSZXNwQ3RybFdpZmlSZXNldA==');

@$core.Deprecated('Use cmdCtrlWifiReprovDescriptor instead')
const CmdCtrlWifiReprov$json = {
  '1': 'CmdCtrlWifiReprov',
};

/// Descriptor for `CmdCtrlWifiReprov`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cmdCtrlWifiReprovDescriptor = $convert.base64Decode(
    'ChFDbWRDdHJsV2lmaVJlcHJvdg==');

@$core.Deprecated('Use respCtrlWifiReprovDescriptor instead')
const RespCtrlWifiReprov$json = {
  '1': 'RespCtrlWifiReprov',
};

/// Descriptor for `RespCtrlWifiReprov`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respCtrlWifiReprovDescriptor = $convert.base64Decode(
    'ChJSZXNwQ3RybFdpZmlSZXByb3Y=');

@$core.Deprecated('Use cmdCtrlThreadResetDescriptor instead')
const CmdCtrlThreadReset$json = {
  '1': 'CmdCtrlThreadReset',
};

/// Descriptor for `CmdCtrlThreadReset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cmdCtrlThreadResetDescriptor = $convert.base64Decode(
    'ChJDbWRDdHJsVGhyZWFkUmVzZXQ=');

@$core.Deprecated('Use respCtrlThreadResetDescriptor instead')
const RespCtrlThreadReset$json = {
  '1': 'RespCtrlThreadReset',
};

/// Descriptor for `RespCtrlThreadReset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respCtrlThreadResetDescriptor = $convert.base64Decode(
    'ChNSZXNwQ3RybFRocmVhZFJlc2V0');

@$core.Deprecated('Use cmdCtrlThreadReprovDescriptor instead')
const CmdCtrlThreadReprov$json = {
  '1': 'CmdCtrlThreadReprov',
};

/// Descriptor for `CmdCtrlThreadReprov`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cmdCtrlThreadReprovDescriptor = $convert.base64Decode(
    'ChNDbWRDdHJsVGhyZWFkUmVwcm92');

@$core.Deprecated('Use respCtrlThreadReprovDescriptor instead')
const RespCtrlThreadReprov$json = {
  '1': 'RespCtrlThreadReprov',
};

/// Descriptor for `RespCtrlThreadReprov`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respCtrlThreadReprovDescriptor = $convert.base64Decode(
    'ChRSZXNwQ3RybFRocmVhZFJlcHJvdg==');

@$core.Deprecated('Use networkCtrlPayloadDescriptor instead')
const NetworkCtrlPayload$json = {
  '1': 'NetworkCtrlPayload',
  '2': [
    {'1': 'msg', '3': 1, '4': 1, '5': 14, '6': '.NetworkCtrlMsgType', '10': 'msg'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.Status', '10': 'status'},
    {'1': 'cmd_ctrl_wifi_reset', '3': 11, '4': 1, '5': 11, '6': '.CmdCtrlWifiReset', '9': 0, '10': 'cmdCtrlWifiReset'},
    {'1': 'resp_ctrl_wifi_reset', '3': 12, '4': 1, '5': 11, '6': '.RespCtrlWifiReset', '9': 0, '10': 'respCtrlWifiReset'},
    {'1': 'cmd_ctrl_wifi_reprov', '3': 13, '4': 1, '5': 11, '6': '.CmdCtrlWifiReprov', '9': 0, '10': 'cmdCtrlWifiReprov'},
    {'1': 'resp_ctrl_wifi_reprov', '3': 14, '4': 1, '5': 11, '6': '.RespCtrlWifiReprov', '9': 0, '10': 'respCtrlWifiReprov'},
    {'1': 'cmd_ctrl_thread_reset', '3': 15, '4': 1, '5': 11, '6': '.CmdCtrlThreadReset', '9': 0, '10': 'cmdCtrlThreadReset'},
    {'1': 'resp_ctrl_thread_reset', '3': 16, '4': 1, '5': 11, '6': '.RespCtrlThreadReset', '9': 0, '10': 'respCtrlThreadReset'},
    {'1': 'cmd_ctrl_thread_reprov', '3': 17, '4': 1, '5': 11, '6': '.CmdCtrlThreadReprov', '9': 0, '10': 'cmdCtrlThreadReprov'},
    {'1': 'resp_ctrl_thread_reprov', '3': 18, '4': 1, '5': 11, '6': '.RespCtrlThreadReprov', '9': 0, '10': 'respCtrlThreadReprov'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `NetworkCtrlPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkCtrlPayloadDescriptor = $convert.base64Decode(
    'ChJOZXR3b3JrQ3RybFBheWxvYWQSJQoDbXNnGAEgASgOMhMuTmV0d29ya0N0cmxNc2dUeXBlUg'
    'Ntc2cSHwoGc3RhdHVzGAIgASgOMgcuU3RhdHVzUgZzdGF0dXMSQgoTY21kX2N0cmxfd2lmaV9y'
    'ZXNldBgLIAEoCzIRLkNtZEN0cmxXaWZpUmVzZXRIAFIQY21kQ3RybFdpZmlSZXNldBJFChRyZX'
    'NwX2N0cmxfd2lmaV9yZXNldBgMIAEoCzISLlJlc3BDdHJsV2lmaVJlc2V0SABSEXJlc3BDdHJs'
    'V2lmaVJlc2V0EkUKFGNtZF9jdHJsX3dpZmlfcmVwcm92GA0gASgLMhIuQ21kQ3RybFdpZmlSZX'
    'Byb3ZIAFIRY21kQ3RybFdpZmlSZXByb3YSSAoVcmVzcF9jdHJsX3dpZmlfcmVwcm92GA4gASgL'
    'MhMuUmVzcEN0cmxXaWZpUmVwcm92SABSEnJlc3BDdHJsV2lmaVJlcHJvdhJIChVjbWRfY3RybF'
    '90aHJlYWRfcmVzZXQYDyABKAsyEy5DbWRDdHJsVGhyZWFkUmVzZXRIAFISY21kQ3RybFRocmVh'
    'ZFJlc2V0EksKFnJlc3BfY3RybF90aHJlYWRfcmVzZXQYECABKAsyFC5SZXNwQ3RybFRocmVhZF'
    'Jlc2V0SABSE3Jlc3BDdHJsVGhyZWFkUmVzZXQSSwoWY21kX2N0cmxfdGhyZWFkX3JlcHJvdhgR'
    'IAEoCzIULkNtZEN0cmxUaHJlYWRSZXByb3ZIAFITY21kQ3RybFRocmVhZFJlcHJvdhJOChdyZX'
    'NwX2N0cmxfdGhyZWFkX3JlcHJvdhgSIAEoCzIVLlJlc3BDdHJsVGhyZWFkUmVwcm92SABSFHJl'
    'c3BDdHJsVGhyZWFkUmVwcm92QgkKB3BheWxvYWQ=');


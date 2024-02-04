// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'dart:convert';
import 'dart:developer';

String output = '';
Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
  final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
  final services = await device.discoverServices();
  BluetoothCharacteristic characteristic = services[2].characteristics[0];
  if (characteristic.uuid.toString() ==
      '6e400003-b5a3-f393-e0a9-e50e24dcca9e') {
    if (!characteristic.isNotifying) {
      await characteristic.setNotifyValue(true);
      print('stuck waiting for notification');
    }
    final _receivedDataBuffer = StringBuffer();
    final _subscriptionForDataFromDevice = characteristic.value.listen((data) {
      var data_string = data.toString();

      _receivedDataBuffer.write(utf8.decode(data));
      output = utf8.decode(data);
    });
    //print(output);
    return output;
  }
  return null;
}

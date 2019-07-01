import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class Scanner {
  List<String> getDevices() {
    List<String> dev;

    FlutterBlue flutterBlue = FlutterBlue.instance;
    print("START--------");

    BluetoothDevice device;
    var scanSubscription = flutterBlue.scan().listen((scanResult) {
      print("Why you don`t print this line? --------");
      device = scanResult.device;
      print(device.name);
      dev.add(device.name);
    });

    scanSubscription.cancel(); // won`t prevent "Another scan is already in progress"
    flutterBlue.stopScan(); // rm this if OK

//    var connectedDevices = flutterBlue.connectedDevices;
//    print(connectedDevices.toString());

    return dev;
  }
}

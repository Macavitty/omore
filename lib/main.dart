import 'dart:async';

import 'package:ble/scaner_tab.dart';
import 'package:flutter/material.dart';
import 'package:ble/widgets.dart';
import 'package:flutter_blue/flutter_blue.dart';

import 'io.dart';

void main() => runApp(MainActivity());

class MainActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green[700],
        accentColor: Colors.grey[800],
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "SCAN"),
                Tab(text: "IO"),
              ],
            ),
            title: Text('Flutter-bluetooth-test'),
          ),
          body: TabBarView(
            children: [
              ScanTab(),
              IoTab(),
            ],
          ),
        ),
      ),
    );
  }
}

//class ScanActivity extends

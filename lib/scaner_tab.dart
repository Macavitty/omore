import 'package:ble/utils.dart';
import 'package:flutter/material.dart';

class ScanTab extends StatefulWidget {
  @override
  State createState() => DynamicList();
}

class DynamicList extends State<ScanTab> {
  List<String> _devices = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(color: Colors.yellow[100]),
      child: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: _devices.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(_devices[index]);
                  })),
          IconButton(
            icon: Icon(Icons.bluetooth_searching),
            tooltip: 'search for devices',
            iconSize: 60,
            onPressed: () {
              // Todo upd devices list
              setState(() {
                String new_device;
                _devices = List.from(Scanner().getDevices());
              });
            },
          ),
        ],
      ),
    );
  }
}

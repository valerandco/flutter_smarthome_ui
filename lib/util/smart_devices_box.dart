import 'dart:ffi';

import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {

  final String smartDeviceName;
  final String iconPath;
  final bool PowerOn;

  const SmartDeviceBox({
    super.key,
    required this.smartDeviceName,
    required this.iconPath,
    required this.PowerOn,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Image.asset(
              iconPath,
              height: 65,
            ),

            // device name

          ],
        ),

      ),
    );
  }
}

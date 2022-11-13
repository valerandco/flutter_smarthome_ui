import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {

  final String smartDeviceName;
  final String iconPath;
  final bool PowerOn;
  void Function(bool)? onChanged;



  SmartDeviceBox({
    super.key,
    required this.smartDeviceName,
    required this.iconPath,
    required this.PowerOn,
    required this.onChanged,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: PowerOn ? Colors.grey[900] : Colors.grey[200],
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              iconPath,
              height: 65,
              color: PowerOn ? Colors.white : Colors.black,
            ),

            // device name
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      smartDeviceName,
                      style:  TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: PowerOn ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: CupertinoSwitch(
                    value: PowerOn,
                    onChanged: onChanged,
                  ),
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}

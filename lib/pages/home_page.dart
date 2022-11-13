import 'package:flutter/material.dart';
import 'package:flutter_smarthome_ui/util/smart_devices_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // padding

  final double horizontalPadding = 40;
  final double verticalPadding = 25;


  // list of devices

  List mySmartDevices = [
    ["Smart Light", "lib/icons/light-bulb.png", true],
    ["Smart AC", "lib/icons/air-conditioner.png", true],
    ["Smart TV", "lib/icons/smart-tv.png", true],
    ["Smart Fan", "lib/icons/fan.png", true],

  ];

  void powerSwitchChanged(bool value) {
    setState(() {
      mySmartDevices[index][2] = value;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'lib/icons/menu.png',
                    height: 45,
                    color: Colors.grey[800],
                  ),

                  //account icon

                  Icon(
                    Icons.person,
                    size: 45,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),


            // welcome

            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: horizontalPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome Home'),
                  Text(
                    'Valerii Gassiev',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),


            const SizedBox(height: 20),

            // devices

            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text('Smart Devices'),
            ),
            
           Expanded(
             child: GridView.builder(
               itemCount: mySmartDevices.length,
               padding: const EdgeInsets.all(25),
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 childAspectRatio: 1/1.3,
               ),
               itemBuilder: (context, index) {
                 return SmartDeviceBox(
                   smartDeviceName: mySmartDevices[index][0],
                   iconPath: mySmartDevices[index][1],
                   PowerOn: mySmartDevices[index][2],
                   onChanged: (value) => powerSwitchChanged(value),
                 );
               }
             ),
           ),


          ],
        ),
      ),









          //devices

    );
  }
}

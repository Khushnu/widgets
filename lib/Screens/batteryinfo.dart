import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BatteryInfoScreen extends StatefulWidget {
  const BatteryInfoScreen({super.key});

  @override
  State<BatteryInfoScreen> createState() => _BatteryInfoScreenState();
}
 
class _BatteryInfoScreenState extends State<BatteryInfoScreen> {

final _battery = Battery(); 
var batterylevel = 0;
BatteryState? batteryState; 
StreamSubscription<BatteryState>? _streamSubscription;


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _battery.batteryState.then((batterystateee) {
      _streamSubscription = _battery.onBatteryStateChanged.listen((ev) {
        // batterylevel = ev;
        batteryState = ev;
      });
    });
    
  
  }

updateStatus(){
  _battery.batteryLevel.then((value) {
    setState(() {
      batterylevel = value;
    });
  });
}

update(BatteryState state){
  if(batteryState == state){
   return;
  }
   setState(() {
      batteryState = state; 
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        StreamBuilder<BatteryState>(stream: _battery.onBatteryStateChanged, 
        builder: (_, snapshot){
          if(!snapshot.hasData){
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
          
           batteryState = snapshot.data!;
           _battery.batteryLevel.then((value) {
            setState(() {
              batterylevel = value;
            });
           },);
              // final batteryLevel = batteryState.batteryLevel;
            return Text('$batterylevel %');
          }
        }),
        Text('${batteryState}'),
        Container(
          width: 190,
          height: 40, 
          child: Slider(
            allowedInteraction: SliderInteraction.tapOnly,
            label: '$batterylevel %',
            min: 0, 
  max: 100,
            value: batterylevel.toDouble(), onChanged: (v){
            batterylevel = v as int;
          }),
        ),

          Text('$batteryState'), 
          Text('$batterylevel'), 
          if(batteryState == BatteryState.charging)
          Lottie.asset('Images/charge.json', height: 130),
          ElevatedButton(onPressed: (){
            
           update(batteryState!);
            // update(batteryState!);
          }, child: const Text('Update'))
        ],
      ),
    );
  }
}
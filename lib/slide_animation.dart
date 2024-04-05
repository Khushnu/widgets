import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets_/Screens/animated_widget.dart';

class SlideAnimation extends StatefulWidget {
  const SlideAnimation({super.key});

  @override
  State<SlideAnimation> createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation> {
  bool isExpandedcont1 = false;
  bool isExpandedcont2 = false;
  bool isExpandedcont3 = false;
  bool isExpandedcont4 = false;
  double cont1 = 10; 
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height; 
    double screenWidth = MediaQuery.sizeOf(context).width; 

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Align( 
              alignment: Alignment.centerRight,
              child: Text('Flutter \nSlide Animation ', style: TextStyle(
                fontSize: 30,
                color: Colors.white),),
            ),
          ),
          WidgetAnimate(
            isExpanded: isExpandedcont3,
            ontap: (){
            setState(() {
               isExpandedcont3 = !isExpandedcont3;
            });
           
          },
           width: isExpandedcont3 ? screenWidth * 0.9 : screenWidth * 0.3 , 
           height: screenHeight, 
           bgCOlor: Colors.indigo, 
           contCOlor: Colors.indigo,
            paddd: 280,
            child:  Padding(
              padding:  EdgeInsets.symmetric(vertical: 130,horizontal: isExpandedcont3 ? 30 : 15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment:  CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  Text('03', style: TextStyle(
                  fontSize:  isExpandedcont3 ? 40 :20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),), 
                  Icon(Icons.flutter_dash_outlined, size:  isExpandedcont3 ? 70 : 20,)
                ],
              ),
            )),
          WidgetAnimate(
            isExpanded: isExpandedcont2,
            ontap: (){
            setState(() {
               isExpandedcont2 = !isExpandedcont2;
            });
           
          },
           width: isExpandedcont2 ? screenWidth * 0.8 - 60 : screenWidth * 0.2 +8, 
           height: screenHeight, 
           bgCOlor: Colors.blue, 
           contCOlor: Colors.blue,
            paddd: 180,
            child:  Padding(
              padding:  EdgeInsets.symmetric(vertical: 130,horizontal: isExpandedcont2 ? 30 : 15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment:  CrossAxisAlignment.end,
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  Text('02', style: TextStyle(
                  fontSize:  isExpandedcont2 ? 40 :20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),), 
                  Icon(Icons.flutter_dash_outlined, size:  isExpandedcont2 ? 70 : 20,)
                ],
              ),
            )),
          WidgetAnimate(
            isExpanded: isExpandedcont1,
            ontap: (){
            setState(() {
               isExpandedcont1 = !isExpandedcont1;
            });
          },
           width: isExpandedcont1 ? screenWidth * 0.4 : screenWidth * 0.1 + 6, 
           height: screenHeight, 
           bgCOlor: Colors.pink, 
           contCOlor: Colors.pink,
            paddd: 80,
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 130),
              child: Column(
                 crossAxisAlignment:  CrossAxisAlignment.center,
                
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                   const Row(
                    children: [],
                  ),
                  Text('01', style: TextStyle(
                  fontSize: isExpandedcont1 ? 50 :20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),), 
                   Icon(Icons.flutter_dash_outlined, size:  isExpandedcont1 ? 70 : 20,)
                ],
              ),
            )),
          
         
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff21b090),
      body: Stack(
        children: [
          
          const Padding(
            padding:  EdgeInsets.symmetric(vertical: 300),
            child:  Align(
              alignment: Alignment.bottomCenter,
               child: Text('Easy and Healthy', style: TextStyle(
                fontSize: 30, 
                color: Colors.white, 
                fontWeight: FontWeight.w400),)),
          )
          ,Padding(
            padding:  EdgeInsets.symmetric(vertical: 130, horizontal: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
               child: Text('Find thousand of easy and healthy recipes so you save time and eat better.', textAlign: TextAlign.center, style: TextStyle(
                fontSize: 30, 
                color: Colors.white, 
                fontWeight: FontWeight.w300),)),
          ),
          Image.asset('Images/Cheer up-pana.png',), 
        ],
      ),
    );
  }
}


class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFAE4E),
      body: Stack(
        children: [
          Image.asset('Images/Chef-bro.png'), 
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 300),
            child: const Align(
              alignment: Alignment.bottomCenter,
               child: Text('Easy and Healthy', style: TextStyle(
                fontSize: 30, 
                color: Colors.white, 
                fontWeight: FontWeight.w400),)),
          )
          ,Padding(
            padding:  EdgeInsets.symmetric(vertical: 130, horizontal: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
               child: Text('Find thousand of easy and healthy recipes so you save time and eat better.', textAlign: TextAlign.center, style: TextStyle(
                fontSize: 30, 
                color: Colors.white, 
                fontWeight: FontWeight.w300),)),
          )
        ],
      ),
    );
  }
}


class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFAE4E),
      body: Stack(
        children: [
          Image.asset('Images/rem.png'), 
          const Padding(
            padding:  EdgeInsets.symmetric(vertical: 300),
            child:  Align(
              alignment: Alignment.bottomCenter,
               child: Text('Save you favorites', style: TextStyle(
                fontSize: 30, 
                color: Colors.white, 
                fontWeight: FontWeight.w400),)),
          )
          ,const Padding(
            padding:  EdgeInsets.symmetric(vertical: 110, horizontal: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
               child: Text('Save your favorties recipes and get reminders to buy the ingredients to cook them.', textAlign: TextAlign.center, style: TextStyle(
                fontSize: 30, 
                color: Colors.white, 
                fontWeight: FontWeight.w300),)),
          )
        ],
      ),
    );
  }
}
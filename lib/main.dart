import 'package:flutter/material.dart';
// import 'package:widgets_/Screens/onboarding.dart';
import 'package:widgets_/bottomnav.dart';
import 'package:widgets_/cart.dart';
import 'package:widgets_/home.dart';
import 'package:widgets_/menu.dart';
import 'package:widgets_/model.dart';
import 'package:widgets_/pageview.dart';
import 'package:widgets_/person.dart';
import 'package:widgets_/reorderlist.dart';
// import 'package:widgets_/prof.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ReorderList(),
    );
  }
}
class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});
  @override
  State<BottomNavbar> createState() => _HomePageState();
}
class _HomePageState extends State<BottomNavbar> {
  int index = 0;
  int selectedindex =0;
  List<Widget> listWidget =[
    const Home(), 
    const Person(), 
    const Cart(), 
    const Menu()
  ];

  onTapped(int index){
    setState(() {
      selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: Colors.black,
      body: listWidget[selectedindex],
      bottomNavigationBar: BottomNav(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(modelNav.length, (index) {
          bool isSelected = index == selectedindex;
          return InkWell(
            onTap: (){
              onTapped(index);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(modelNav[index].image,
                 color: isSelected ? const Color.fromARGB(255, 255, 69, 7) : Colors.black,
                  height: 30,),
                  Text(modelNav[index].name, style: TextStyle(color: Colors.black, fontSize: 15),)
              ],
            ));
        })..insert(2, Transform.translate( 
          offset: Offset(0, -35),
          child: Container(
            height: 70, 
            width: 70, 
            decoration: const BoxDecoration(
              color: Colors.blue, 
              shape: BoxShape.circle
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.car_crash),
                Text('Car Crash', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ))
      ),) ,
    );
  }
}
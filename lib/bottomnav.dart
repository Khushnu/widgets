import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key, required this.child});
  final Widget child;
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.1  , 
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), 
          color: Color.fromARGB(255, 169, 169, 180)
        ), 
        child: widget.child ,
      ),
    );
  }
}
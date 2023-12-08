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
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 34),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.1 - 50, 
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), 
          color: const Color(0xff4D4C7D)
        ), 
        child: widget.child ,
      ),
    );
  }
}
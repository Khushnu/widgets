import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetAnimate extends StatefulWidget {
final bool isExpanded;
final Function() ontap;
final double width; 
final double height; 
final double paddd; 
final Color bgCOlor; 
final Color contCOlor; 
final Widget child;
  const WidgetAnimate({super.key, 
  
   this.isExpanded = false, required this.ontap, required this.width, required this.height, required this.bgCOlor, required this.child, required this.paddd, required this.contCOlor});

  @override
  State<WidgetAnimate> createState() => _AnimatedWidgetState();
}

class _AnimatedWidgetState extends State<WidgetAnimate> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(duration: const Duration(seconds: 1), 
          curve: Curves.fastEaseInToSlowEaseOut,
          width: widget.isExpanded ? widget.width : widget.width,
          height: widget.height ,
          color: widget.bgCOlor,  
          child: Stack(
           
            children: [
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: widget.paddd),
                child: Align( 
                  alignment: Alignment.bottomRight,
                  child: GestureDetector( 
                    onTap: widget.ontap,
                    child: Transform.translate(
                      offset: const Offset(40, 0),
                      child: Container(
                                  height: 60, 
                                  width: 70,  
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: widget.contCOlor),
                                  child:  Icon(widget.isExpanded ?  Icons.arrow_back_ios : Icons.arrow_forward_ios),
                                ),
                    ),
                  ),
                ),
              ), 
              widget.child,
            ],
          ),
          );
  }
}
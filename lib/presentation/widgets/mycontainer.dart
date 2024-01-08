import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
   MyContainer({
    super.key, required this.width, required this.height, required this.radius, required this.child, required this.padding,
  });
  final double width;
  final double height;
   final double radius;
   final double padding;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(radius)),
           child: child,
            
            );
  }
}


import 'package:flutter/material.dart';

class myCircleAvatar extends StatelessWidget {
  myCircleAvatar({
    super.key,
    required this.profileHeight,
    required this.image,
  });
  final dynamic image;
  final double profileHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104, // Adjust the width and height to accommodate the border
      height: 104,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors
              .white, // Specify the color of the border (in this case, white)
          width: 3.0, // Specify the width of the border
        ),
      ),
      child: CircleAvatar(
        radius: 22,
        backgroundColor: Colors.white,
        child: image,
      ),
    );
  }
}

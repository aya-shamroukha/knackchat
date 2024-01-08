// ignore_for_file: library_private_types_in_public_api

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uik/presentation/pages/homepage.dart';
import 'package:uik/presentation/pages/subject.dart';
import 'package:uik/presentation/pages/teacher.dart';
import 'package:uik/utilities/constant/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedindex = 0;
  var screen=[ HomePage(),const Teacher(), SubjectPage(), HomePage()];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screen[selectedindex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: 0,
              height: 50.0,
              items: const <Widget>[
                 Icon(Icons.home,color: Colors.white,),
       Icon(Icons.groups,color: Colors.white,),
          Icon(Icons.school,color: Colors.white),
           Icon(Icons.favorite,color: Colors.white,),
              ],
              buttonBackgroundColor: primary,
              
              backgroundColor: Colors.transparent,
              color: primary,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 400),
              onTap: (index) {
                setState(() {
                  selectedindex = index;
                });
              },
              letIndexChange: (index) => true,
              
            ),
          ),
        ],
      ),
    );
  }
}

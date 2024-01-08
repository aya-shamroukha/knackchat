import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uik/presentation/pages/homepage.dart';
import 'package:uik/presentation/pages/subject.dart';
import 'package:uik/presentation/pages/teacher.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/theme_manger.dart';

class BottomNavigationBarr extends StatefulWidget {
  const BottomNavigationBarr({super.key});
  @override
  State<BottomNavigationBarr> createState() => _BottomNavigationBarrState();
}
class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  int selectedindex=0;
var screen=[ HomePage(),const Teacher(), SubjectPage(), HomePage()];

  @override
  Widget build(BuildContext context) {
      final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: bottomNavigationKey ,
         // currentIndex: selectedindex,
         buttonBackgroundColor: primary,
              
              backgroundColor: Colors.transparent,
              color: primary,
          animationDuration: const Duration(milliseconds: 400),
          height: 50,
          index: selectedindex,
          onTap: (index){
            setState(() {
                selectedindex=index;
            });
          },          
          items:  const [
      Icon(Icons.home,color: Colors.white,),
       Icon(Icons.groups,color: Colors.white,),
          Icon(Icons.school,color: Colors.white),
           Icon(Icons.favorite,color: Colors.white,),
        ],
        
        ), 
        body: screen[selectedindex],
    );
  }
}
// ignore_for_file: prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:uik/presentation/widgets/mysizedbox.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/images.dart';


class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}
  
class _Page2State extends State<Page2> {

  @override
  Widget build(BuildContext context) {
        return SafeArea(
          child: Column(children: [
            
            SizedBox(
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.width*0.9,
              child: Image.asset(
                secondImage,
                scale: 3,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox_Height(height: 20,),
            Text("testyourknowledge".tr(),
                style: TextStyle(color: black, fontSize: MediaQuery.of(context).size.width*0.07,fontWeight: FontWeight.bold)),//size27
          SizedBox_Height(height: 10,),
            Padding(
              padding: const EdgeInsets.
              only(left: 10),
              child: Text("challengeyourself".tr(),
                  style: TextStyle(color: Colors.black38, fontSize:MediaQuery.of(context).size.width*0.05)),
            )//size17
          
          ]),
          
        );
      }
   
}



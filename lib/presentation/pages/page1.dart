// ignore_for_file: prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/images.dart';
bool isDark=false;

// ignore: must_be_immutable
class Page1 extends StatefulWidget {
   Page1({super.key});
bool isDark=false;
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
   

    return SafeArea(
      child: Column(children: [
        //   SizedBox_Height(height: 30,),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width * 0.9,
          child: Image.asset(
            firstImage,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("1".tr(),
              style: TextStyle(
                  color: black,
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontWeight: FontWeight.bold)),
        ), //size27
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text("quizasagroup".tr(),
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: MediaQuery.of(context).size.width * 0.05)),
        ), //size17,

      ]),
    );
  }
}

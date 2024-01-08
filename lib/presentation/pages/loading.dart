// ignore_for_file: sort_child_properties_last

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:uik/presentation/widgets/mysizedbox.dart';
import 'package:uik/utilities/constant/images.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Col,
      body: Stack(children: [
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(loadingImage)),
                const SizedBox_Height(height: 10,),

       Positioned(child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Text('Ops, I think you should take a break, \n Check your internet'.tr(),
        style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
      ),bottom: 160,)
    ]),);
  }
}
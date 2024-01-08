import 'package:flutter/material.dart';
import 'package:uik/utilities/constant/colors.dart';

Material tabBar(String text1,String text2,String text3) {
    return Material(
              borderRadius: BorderRadius.circular(22),
              color: primary,
              child: TabBar(
                
                indicator: BoxDecoration(), tabs: [
                Tab(
                  text: text1,
                ),
                Tab(
                  child: Text(text2,style: TextStyle(fontSize: 11),),
                ),
                Tab(
                  text: text3,
                ),
              ]),
            );
  }
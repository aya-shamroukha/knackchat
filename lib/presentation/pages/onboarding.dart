// ignore_for_file: sort_child_properties_last, non_constant_identifier_names, camel_case_types

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uik/presentation/pages/page1.dart';
import 'package:uik/presentation/pages/page2.dart';
import 'package:uik/presentation/pages/page3.dart';
import 'package:uik/presentation/widgets/my_button.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/route_manger.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoarding_listState();
}

class _OnBoarding_listState extends State<OnBoarding> {
  PageController pageController = PageController(initialPage: 0);
  int current_page = 0;
  List pages = [Page1(), Page2(), Page3()];
  onChanged(int index) {
    setState(() {
      current_page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            SmoothPageIndicator(controller: pageController, count: pages.length,
            effect:ExpandingDotsEffect(
             // verticalOffset: 10,
              activeDotColor:onboardingcolor ,
              dotHeight: 5,dotWidth: 60,
              dotColor: Colors.grey.withOpacity(0.7)),),
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                onPageChanged: onChanged,
                children: [Page1(),Page2(),Page3()],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(bottom: 50,top: 10),
              child:
              Column(
                children: [
                  MyButton(
                  colors: Color.fromARGB(255, 230, 224, 224),
                  onpress: () {
                    GoRouter.of(context).go(Routes().signUp);
                  },
                  title: 'ihaveanaccount'.tr(),
                  height: 50,
                  radius:80,
                  width: 350,
                  textcolor: black,
                  boxshadow: BoxShadow(
                      color: Colors.grey, blurRadius: 1, offset: Offset(5, 5.3))
                      ),
                       MyButton(
              colors: Colors.black,
              onpress: () {  GoRouter.of(context).go(Routes().login);},
              title: 'getstarted'.tr(),
              height: 50,
              radius:30,
              width: 350,
              textcolor: Colors.white,
              boxshadow: BoxShadow(
                  color: primary, blurRadius: 1, offset: Offset(5, 5.3))
                  ),
                ],
              ),
                   
            )
          ],
        ),
      ),
    );
  }
}


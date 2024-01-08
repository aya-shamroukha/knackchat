import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:uik/presentation/widgets/my_button.dart';
import 'package:uik/presentation/widgets/mysizedbox.dart';
import 'package:uik/presentation/widgets/popupbutton.dart';

import 'package:uik/utilities/constant/colors.dart';
import 'package:provider/provider.dart';
import 'package:uik/utilities/constant/route_manger.dart';

import 'package:uik/utilities/constant/theme_manger.dart';

class Section extends StatelessWidget {
  const Section({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox_Height(
              height: 50,
            ),
            Row(
              children: [PopUpButton(themeProvider: themeProvider)],
            ),
            const SizedBox_Height(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                ('${"chooseyourstudy".tr()}:'),
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            MyButton(
              height: 60,
              radius: 20,
              width: 360,
              boxshadow: BoxShadow(
                  color: primary, blurRadius: 0.5, offset: const Offset(1, 1)),
              textcolor:
                  themeProvider.currentTheme == ThemeMode.light ? black : wHite,
              title: "scientific".tr(),
              onpress: () {
                GoRouter.of(context).go(Routes().signUp);
               
                //  showSnakBar();

                // GoRouter.of(context).go(Routes().bottom);
              },
              colors: themeProvider.currentTheme == ThemeMode.light
                  ? themeProvider.currentTheme == ThemeMode.light
                      ? themeProvider.currentTheme == ThemeMode.light
                          ? themeProvider.currentTheme == ThemeMode.light
                              ? greybutton
                              : grey
                          : grey
                      : grey
                  : grey,
            ),
            const SizedBox_Height(
              height: 10,
            ),
            MyButton(
                height: 60,
                radius: 20,
                width: 360,
                boxshadow: BoxShadow(
                    color: primary,
                    blurRadius: 0.5,
                    offset: const Offset(1, 1)),
                textcolor: themeProvider.currentTheme == ThemeMode.light
                    ? black
                    : wHite,
                title: "literary".tr(),
                onpress: () {},
                colors: themeProvider.currentTheme == ThemeMode.light
                    ? themeProvider.currentTheme == ThemeMode.light
                        ? themeProvider.currentTheme == ThemeMode.light
                            ? themeProvider.currentTheme == ThemeMode.light
                                ? themeProvider.currentTheme == ThemeMode.light
                                    ? greybutton
                                    : grey
                                : grey
                            : grey
                        : grey
                    : grey),
            const SizedBox_Height(
              height: 10,
            ),
            MyButton(
                height: 60,
                radius: 20,
                width: 360,
                boxshadow: BoxShadow(
                    color: primary,
                    blurRadius: 0.5,
                    offset: const Offset(1, 1)),
                textcolor: themeProvider.currentTheme == ThemeMode.light
                    ? black
                    : wHite,
                title: "religioussecondaryschool".tr(),
                onpress: () {},
                colors: themeProvider.currentTheme == ThemeMode.light
                    ? themeProvider.currentTheme == ThemeMode.light
                        ? themeProvider.currentTheme == ThemeMode.light
                            ? themeProvider.currentTheme == ThemeMode.light
                                ? greybutton
                                : grey
                            : grey
                        : grey
                    : grey),
            const SizedBox_Height(
              height: 10,
            ),
            MyButton(
                height: 60,
                radius: 20,
                width: 360,
                boxshadow: BoxShadow(
                    color: primary, blurRadius: 0.5, offset: const Offset(1, 1)),
                textcolor: themeProvider.currentTheme == ThemeMode.light
                    ? black
                    : wHite,
                title: "commercialsecondaryschool".tr(),
                onpress: () {},
                colors: themeProvider.currentTheme == ThemeMode.light
                    ? themeProvider.currentTheme == ThemeMode.light
                        ? themeProvider.currentTheme == ThemeMode.light
                            ? themeProvider.currentTheme == ThemeMode.light
                                ? greybutton
                                : grey
                            : grey
                        : grey
                    : grey),
            const SizedBox_Height(
              height: 10,
            ),
            const SizedBox_Height(
              height: 10,
            ),
            MyButton(
                height: 60,
                radius: 20,
                width: 360,
                boxshadow: BoxShadow(
                    color: primary, blurRadius: 0.5, offset: const Offset(1, 1)),
                textcolor: themeProvider.currentTheme == ThemeMode.light
                    ? black
                    : wHite,
                title: "vocationalsecondaryschoolforgirl".tr(),
                onpress: () {},
                colors: themeProvider.currentTheme == ThemeMode.light
                    ? themeProvider.currentTheme == ThemeMode.light
                        ? themeProvider.currentTheme == ThemeMode.light
                            ? themeProvider.currentTheme == ThemeMode.light
                                ? greybutton
                                : grey
                            : grey
                        : grey
                    : grey),
            const SizedBox_Height(
              height: 10,
            ),
            MyButton(
                height: 60,
                radius: 20,
                width: 360,
                boxshadow: BoxShadow(
                    color: primary, blurRadius: 0.5, offset: const Offset(1, 1)),
                textcolor: themeProvider.currentTheme == ThemeMode.light
                    ? black
                    : wHite,
                title: "industrialvocationalsecondaryschool".tr(),
                onpress: () {},
                colors: themeProvider.currentTheme == ThemeMode.light
                    ? greybutton
                    : grey),
          ],
        ),
      ),
    );
  }
}

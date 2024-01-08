import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/images.dart';
import 'package:uik/utilities/constant/route_manger.dart';
import 'package:uik/utilities/constant/theme_manger.dart';

Future<dynamic> ShowDialog(BuildContext context) {
    return showDialog(
                  useSafeArea: false,
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                        final themeProvider = Provider.of<ThemeProvider>(context);

                    return AlertDialog(
                      
                      actionsOverflowDirection: VerticalDirection.down,
                      title: Column(
                        children: [
                          Image.asset(
                            welcomeImage,
                          ), Text(
                        'welcometoKnakchat!'.tr(),
                        style: TextStyle(
                            color:themeProvider.currentTheme==ThemeMode.light?black:wHite,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                        ],
                      ),actions: [TextButton(onPressed: (){GoRouter.of(context).go(Routes().bottomNavBar);}, 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('continue'.tr(),style: TextStyle(color: primary),),Icon(Icons.navigate_next,color: primary)],))],
                    
                    );
                  });
  }
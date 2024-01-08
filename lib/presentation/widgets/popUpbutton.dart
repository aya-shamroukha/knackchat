import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:uik/utilities/constant/theme_manger.dart';

class PopUpButton extends StatelessWidget {
  const PopUpButton({
    super.key,
    required this.themeProvider,
  });

  final ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: ((context) => [
              PopupMenuItem(
                onTap: () {
                  themeProvider.toggleTheme();
                },
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          themeProvider.currentTheme ==
                                  ThemeMode.light
                              ? 'Dark'
                              : 'Light',
                          style: TextStyle(color: Colors.black),
                        )),
                    Icon(
                      themeProvider.currentTheme ==
                              ThemeMode.light
                          ? Icons.
                          nights_stay
                          : Icons.sunny,
                      color: themeProvider.currentTheme ==
                              ThemeMode.light
                          ? Colors.grey
                          : Colors.yellow,
                    )
                  ],
                ),
              ),
              PopupMenuItem(
                onTap:(){
                     if (context.locale.languageCode ==
                              "en") {
                            context.setLocale(Locale("ar"));
                          } else
                            context.setLocale(Locale("en"));
                } ,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                        if (context.locale.languageCode ==
                              "en") {
                            context.setLocale(Locale("ar"));
                          } else
                            context.setLocale(Locale("en"));
                        },
                        child: Text('Change language',
                            style:
                                TextStyle(color: Colors.black))),
                    Icon(Icons.translate)
                  ],
                ),
              )
            ]));
  }
}
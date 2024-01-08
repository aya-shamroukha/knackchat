// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:uik/config/theme/theme.dart';
import 'package:uik/data/localStorge/localstorge.dart';
import 'package:uik/utilities/constant/route_manger.dart';
import 'package:uik/utilities/constant/theme_manger.dart';
 main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await initgetit();
    


  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: "assets/translation",
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      fallbackLocale: const Locale('ar'),
      child: MyApp(),
    ),
  );
  
 
}
class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _){
      
      return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
        child: MaterialApp.router(
          theme: lightTheme, 
              darkTheme: darkTheme,
          themeMode: themeProvider.currentTheme,
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
        ),
      );
  }));
  }
}

import 'package:flutter/material.dart';


ThemeData lightTheme=ThemeData(
  brightness: Brightness.light
);
ThemeData darkTheme=ThemeData(
  brightness: Brightness.dark,
//  textTheme: TextTheme(
//   displayLarge: TextStyle(color: Colors.white),
//     inputDecorationTheme: InputDecorationTheme(
       
//         contentPadding: EdgeInsets.symmetric(
//             horizontal: AppSizeW.s8, vertical: AppSizeH.s20),
//         // hint style
//         hintStyle: getSemiBoldStyle(
//             color: ),

//         // label style
//         labelStyle: getRegularStyle(color: ColorManager.textGrey),
//         // error style
//         errorStyle: getRegularStyle(color: ColorManager.error),

//         // enabled border
//         enabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide(color: ColorManager.lightGrey,)),

//         // focused border
//         focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: ColorManager.primary),
//         ),
//       ),
//  )
    
  
);


// ThemeData getApplicationLightTheme() {
//   return ThemeData(
//       // main colors of the app
//       scaffoldBackgroundColor: Colors.white,
//       backgroundColor: Colors.white,
//       primaryColor: ColorManager.primary,
//       shadowColor: ColorManager.black,
//       disabledColor: ColorManager.grey,
//       // ripple color
//       // card view theme
//       cardTheme: CardTheme(
//           color: ColorManager.white,
//           shadowColor: ColorManager.black,
//           elevation: AppSizeSp.s4),
//       // App bar theme
//       appBarTheme: AppBarTheme(
//           systemOverlayStyle: const SystemUiOverlayStyle(
//               statusBarColor: Colors.black,
//               statusBarBrightness: Brightness.dark),
//           backgroundColor: Colors.white,
//           centerTitle: true,
//           elevation: AppSizeSp.s1,
//           shadowColor: ColorManager.lightPrimary,
//           titleTextStyle: getSemiBoldStyle(
//             color: ColorManager.primary,
//             fontSize: FontSize.s20,
//           ),
//           iconTheme:
//           IconThemeData(color: ColorManager.primary, size: AppSizeSp.s21)),

//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//         backgroundColor: ColorManager.secondary,
//         iconSize: AppSizeW.s22
//       ),

//       // Icon theme
//       iconTheme: IconThemeData(color: ColorManager.grey,size: AppSizeW.s21),

//       // elevated button theme
//       elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             fixedSize: Size(AppSizeW.s317, AppSizeH.s48),
//               textStyle:
//                   getSemiBoldStyle(color: Colors.white, fontSize: AppSizeSp.s20),
//               backgroundColor: ColorManager.primary,
//               shadowColor: Colors.black,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(AppSizeR.s20)))),

//       // Text theme
//       textTheme: TextTheme(
//         headline1: getBoldStyle(
//           color: ColorManager.primary,
//           fontSize: FontSize.s24,
//         ),
//         headline2: getBoldStyle(color: ColorManager.black),
//         button: getRegularStyle(color: Colors.black, fontSize: AppSizeSp.s23),
//         bodyText1: getSemiBoldStyle(
//           color: ColorManager.textGrey,
//           fontSize: FontSize.s12,
//         ),
//         bodyText2: getRegularStyle(color: ColorManager.primary, fontSize: FontSize.s14),
//         subtitle1: getRegularStyle(
//           color: ColorManager.grey,
//           fontSize: FontSize.s16,
//         ),
//         subtitle2: getRegularStyle(
//           color: ColorManager.textGrey,
//           fontSize: FontSize.s15,
//         ),
//         headline3:
//         getSemiBoldStyle(color: Colors.white,fontSize: FontSize.s20),
//         headline4:
//         getSemiBoldStyle(color: ColorManager.primary,fontSize: FontSize.s20),
//         headline5: getRegularStyle(color: ColorManager.primary.withOpacity(.62),fontSize: FontSize.s14),
//         headline6: getSemiBoldStyle(
//             color: ColorManager.primary, fontSize: FontSize.s28),
//       ),
//       // input decoration theme (text form field)

//       textSelectionTheme: TextSelectionThemeData(
//         cursorColor: ColorManager.primary,
//       ),

//       inputDecorationTheme: InputDecorationTheme(
//         prefixIconColor: Colors.grey,
//         suffixIconColor: ColorManager.grey,
//         contentPadding: EdgeInsets.symmetric(
//             horizontal: AppSizeW.s8, vertical: AppSizeH.s20),
//         // hint style
//         hintStyle: getSemiBoldStyle(
//             color: ColorManager.textGrey, fontSize: AppSizeSp.s12),

//         // label style
//         labelStyle: getRegularStyle(color: ColorManager.textGrey),
//         // error style
//         errorStyle: getRegularStyle(color: ColorManager.error),

//         // enabled border
//         enabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide(color: ColorManager.lightGrey,)),

//         // focused border
//         focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: ColorManager.primary),
//         ),
//       ),
//       colorScheme:
//           ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey));
// }

import 'package:flutter/material.dart';
import 'package:uik/utilities/constant/colors.dart';


TextButton textbutton(BuildContext context, dynamic onpressed, String mytext,
    FontWeight fontWeight,FontStyle fontStyle,) {
  return TextButton(
      onPressed: onpressed,
      child: Text(mytext,
          style: TextStyle(color: black, fontWeight: fontWeight,fontStyle: fontStyle)));
}
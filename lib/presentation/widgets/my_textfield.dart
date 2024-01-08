
// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, body_might_complete_normally_nullable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uik/presentation/widgets/mysizedbox.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/theme_manger.dart';

TextEditingController passwordController = TextEditingController();
TextEditingController passwordconfirmation = TextEditingController();
  TextEditingController firstnamecontroller = TextEditingController();
    TextEditingController lastnamecontroller = TextEditingController();


class FirstnameTextField extends StatelessWidget {
        GlobalKey<FormState> formstatee = GlobalKey<FormState>();
          

  FirstnameTextField({
    super.key, required this.Controller,
  
  });
  final TextEditingController Controller;
  @override
  Widget build(BuildContext context) {
        final themeProvider = Provider.of<ThemeProvider>(context);

    return Form(
      key: formstatee,
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            TextFormField(
 autovalidateMode: AutovalidateMode.always,
               validator: (text) {
                if(text!.length==0){
                  return "pleaseenteryourname".tr();
                }
                else{return '';}
              },
              controller: Controller,
              cursorColor: Colors.grey,
               decoration: InputDecoration(
                errorStyle: TextStyle(color: themeProvider.currentTheme==ThemeMode.light?primary:wHite),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)),
                      focusedErrorBorder:OutlineInputBorder(borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)) ,
                  fillColor:themeProvider.currentTheme==ThemeMode.light ?greybutton:grey,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: primary)),
               hintText:"firstname".tr(),
                  labelStyle: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
          ],
        ),
      ),
      
    );
  }
}

class LastNameTextField extends StatelessWidget {
  const LastNameTextField({
    super.key, required this.Controller,
  
  });
  final TextEditingController Controller;

@override
  Widget build(BuildContext context) {
      final themeProvider = Provider.of<ThemeProvider>(context);
       GlobalKey<FormState> formlastname = GlobalKey<FormState>();
    return Form(
      key: formlastname,
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 40),
        child: TextFormField(
           autovalidateMode: AutovalidateMode.always,
         validator: (text) {
          if(text!.length==0){
            return "pleaseenteryourname".tr();
          }else{return '';}
        },
        controller: Controller,
        cursorColor: Colors.grey,
         decoration: InputDecoration(
          errorStyle: TextStyle(color: themeProvider.currentTheme==ThemeMode.light?primary:greybutton),
           errorBorder: OutlineInputBorder(borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)),
                      focusedErrorBorder:OutlineInputBorder(borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)) ,
                      
            fillColor:themeProvider.currentTheme==ThemeMode.light ?greybutton:grey,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(borderSide: BorderSide(color: primary)),
         hintText:"lastname".tr(),
            labelStyle: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class UserTagTextField extends StatelessWidget {
  UserTagTextField({
    super.key,
    required this.labeltext,
    required this.Controller,
  });
  final String labeltext;
  
  final TextEditingController Controller;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      final themeProvider = Provider.of<ThemeProvider>(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: TextFormField(
          keyboardType: TextInputType.name,
          controller: Controller,
          cursorColor: Colors.grey,
          autovalidateMode: AutovalidateMode.always,
          decoration: InputDecoration(
            
            fillColor:themeProvider.currentTheme==ThemeMode.light ?greybutton:grey,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(borderSide: BorderSide(color: primary)),
         hintText: labeltext,
            labelStyle: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
class PhoneTextField extends StatelessWidget {
  PhoneTextField({
    super.key,
    required this.labeltext,
    required this.Controller,
  });
  final String labeltext;
  final TextEditingController Controller;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      final themeProvider = Provider.of<ThemeProvider>(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: TextFormField(
          // validator: (value){
          //   if(value!.startsWith('09')){
          //     return '';
          //   }else{
          //     return'Please start your number with 09 ';
          //   }
          // },
          maxLength: 10,
          keyboardType: TextInputType.number,
          controller: Controller,
          cursorColor: Colors.grey,
          decoration: InputDecoration(
             errorStyle: TextStyle(color: themeProvider.currentTheme==ThemeMode.light?Colors.red:wHite),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)),
                      focusedErrorBorder:OutlineInputBorder(borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)) ,
            fillColor:themeProvider.currentTheme==ThemeMode.light ?greybutton:grey,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(borderSide: BorderSide(color: primary)),
         hintText: labeltext,
            labelStyle: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {


  PasswordTextField({
    super.key,
    required this.labeltext,
  });
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  final String labeltext;


@override
  Widget build(BuildContext context) {
    

  
      final themeProvider = Provider.of<ThemeProvider>(context);
    bool is_weak = true;
    bool is_match = true;
    return Form(
      child: StatefulBuilder(builder: (context, setstate) {
        return Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              TextFormField(
                //  autovalidateMode: AutovalidateMode.always,
                key: formstate,
                onChanged: (value) {
                  if (value.length < 8) {
                    setstate(() {
                      is_weak = true;
                    });
                  } else {
                    setstate(() {
                      is_weak = false;
                    });
                  }
                },
                controller: passwordController,
                cursorColor: Colors.grey,
                  decoration:  InputDecoration(
               suffixText: is_weak ? 'weak' : 'strong',
                  suffixStyle:
                      TextStyle(color: (is_weak) ? Colors.red : Colors.green),
                  fillColor:themeProvider.currentTheme==ThemeMode.light ?greybutton:grey,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: primary)),
               hintText: labeltext,
                  labelStyle: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ), SizedBox_Height(height: 10,),
              TextFormField(
        autovalidateMode: AutovalidateMode.always,      

                 validator: (text){
          if(passwordconfirmation.text!= passwordController.text){
           // print(passwordController.text);
                  return "Password is not identical";
          }
        },
                onChanged:(val){
                  if(passwordconfirmation.text!= passwordController.text) {
                    setstate((){
                    is_match=true;
                  });
                  } else {
                       setstate((){

                    is_match = false;
                    });
                  }
                } ,
                //  autovalidateMode: AutovalidateMode.always,
                controller: passwordconfirmation,
                cursorColor: Colors.grey,
                  decoration:  InputDecoration(
               suffix: Icon(is_match?Icons.check:Icons.check,color:is_match?Colors.white:Colors.green),
                 
                 errorStyle: TextStyle(color: themeProvider.currentTheme==ThemeMode.light?Colors.red:greybutton),
           errorBorder: OutlineInputBorder(borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)),
                      focusedErrorBorder:OutlineInputBorder(borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)) ,
                      
            fillColor:themeProvider.currentTheme==ThemeMode.light ?greybutton:grey,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: primary)),
               hintText: labeltext,
                  labelStyle: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
class PasswordLoginTextField extends StatelessWidget {
  PasswordLoginTextField({
    super.key,
    required this.labeltext,
    required this.Controller,
  });
  final String labeltext;
      bool is_secret=true;

  final TextEditingController Controller;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      final themeProvider = Provider.of<ThemeProvider>(context);
    return Form(
      child: StatefulBuilder(
        builder:(context, setstate){
           return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: TextFormField(
            obscureText: is_secret,
            keyboardType: TextInputType.name,
            controller: Controller,
            cursorColor: Colors.grey,
            autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(
              suffixIcon: IconButton(onPressed: (){
                setstate((){
                  is_secret=!is_secret;
                });
                
              }, icon: Icon(is_secret?Icons.visibility_off:Icons.remove_red_eye,color: primary,)),
              fillColor:themeProvider.currentTheme==ThemeMode.light ?greybutton:grey,
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primary),
                  borderRadius: BorderRadius.circular(12)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primary),
                  borderRadius: BorderRadius.circular(12)),
              border: OutlineInputBorder(borderSide: BorderSide(color: primary)),
           hintText: labeltext,
              labelStyle: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
        );
        } ,
       
      ),
    );
  }
}
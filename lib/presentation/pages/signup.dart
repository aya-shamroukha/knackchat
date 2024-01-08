
// ignore_for_file: prefer_const_constructors
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:uik/data/service/auth_service.dart';
import 'package:uik/domain/models/auth_models/signup.dart';
import 'package:uik/presentation/pages/loading.dart';
import 'package:uik/presentation/widgets/dropdown.dart';
import 'package:uik/presentation/widgets/my_button.dart';
import 'package:uik/presentation/widgets/my_textfield.dart';
import 'package:uik/presentation/widgets/mycontainer.dart';
import 'package:uik/presentation/widgets/mysizedbox.dart';
import 'package:uik/presentation/widgets/popupbutton.dart';
import 'package:uik/presentation/widgets/show_dialog.dart';

import 'package:uik/presentation/widgets/showmodelbottom.dart';
import 'package:provider/provider.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/text_editing_contoller.dart';

import 'package:uik/utilities/constant/theme_manger.dart';
TextEditingController firstnamecontroller = TextEditingController();
TextEditingController usertagcontroller = TextEditingController();

TextEditingController   lastnamecontroller= TextEditingController();

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});

  bool isDark = false;
  dynamic selected;
  validator(){
    var  formdata=formstatee.currentState;
    if(formdata!.validate()){

    };
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body:
      OfflineBuilder(
         connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) {
          final bool connected = connectivity != ConnectivityResult.none;
         
      return   connected? 
              SizedBox(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox_Height(
                height: 0,
              ),
              Row(
                children: [
                  PopUpButton(themeProvider: themeProvider)
                ],
              ),  SizedBox_Height(
                height: 80,
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "createanaccount".tr(),
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 17.0),
                child: Text(
                  "pleasecompleteyourprofile".tr(),
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                     FirstnameTextField(Controller: firstnamecontroller,
                       ), SizedBox_Height(height: 10),
                     LastNameTextField(Controller: lastnamecontroller),
                     UserTagTextField(Controller: usertagcontroller,labeltext: 'User name',),
                      SizedBox_Height(height: 10),
                      PhoneTextField(
                            labeltext: "phonenumber".tr(),
                            Controller: phonecontroller),
                      PasswordTextField(
                          labeltext: "password".tr(),
                        ),
                      SizedBox_Height(height: 10),
                      MyContainer(
                        height: 60,
                        radius: 12,
                        width: 313,
                        padding: 0,
                        child: StatefulBuilder(
                          builder: (BuildContext context, setState) {
                            return DropDown(
                              onChanged: (w) {
                                setState(() {
                                  selected = w;
                                });
                              },
                              selected: selected,
                            );
                          },
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "dontfindyourschool?".tr(),
                                style: TextStyle(

color:themeProvider.currentTheme==ThemeMode.light?black:wHite,
                                    fontWeight: FontWeight.w300),
                              ),
                              TextButton(
                                  onPressed: () {
                                    ShowModelBottomSheet(
                                        context, schoolcontroller,);
                                  },
                                  child: Text(
                                    "additnow".tr(),
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          )),
                    ],
                  )),
              SizedBox_Height(height: 70),
              MyButton(
                  colors: themeProvider.currentTheme==ThemeMode.light?Colors.black:wHite,
                  onpress: ()async {
                     var data= await AuthImple().signUp(
                      CreateUserModelRequset(
                        first_name: firstnamecontroller.text, 
                        last_name: lastnamecontroller.text, 
                        user_tag:usertagcontroller.text, phone: phonecontroller.text,
                         password: passwordController.text, password_confirmation: passwordconfirmation.text, 
                         remember_me: 1, city_id: 1, speciality_id: ['1'])       
                                );
                                if(data){
                                  ShowDialog(context);
                                }
             
                  },
                  title: "next".tr(),
                  radius: 30,
                  height: 50,
                  textcolor:themeProvider.currentTheme==ThemeMode.light? wHite:black,
                  width: 350,
                  boxshadow: BoxShadow(
                      color: primary,
                      blurRadius: 1,
                      offset: Offset(3, 5))),
            ],
          ),
        ),
      ) :Loading();
          
         
        },
       child: Text(''),
      )
      
   
    );
  }
}
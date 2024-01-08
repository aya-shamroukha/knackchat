// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:uik/domain/models/auth_models/login.dart';
import 'package:uik/presentation/bloc/login/login_bloc.dart';
import 'package:uik/presentation/pages/loading.dart';
import 'package:uik/presentation/widgets/my_button.dart';
import 'package:uik/presentation/widgets/my_textfield.dart';
import 'package:uik/presentation/widgets/mysizedbox.dart';
import 'package:uik/presentation/widgets/popUpbutton.dart';
import 'package:uik/presentation/widgets/show_dialog.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/images.dart';
import 'package:uik/utilities/constant/route_manger.dart';
import 'package:uik/utilities/constant/theme_manger.dart';

TextEditingController passwordlogincontroller = TextEditingController();
TextEditingController usertaglogincontroller = TextEditingController();

TextEditingController phonelogincontroller = TextEditingController();

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
              body: BlocListener<LoginBloc, LoginState>(
                listenWhen: (previous, current) => previous!=current,
            listener: (context, state) {
              if(state is LoginSuccessState){
                print('success');
                ShowDialog(context);
              }
              else if(state is LoginFailed){
                              print('faild');
        
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(behavior: SnackBarBehavior.floating,
                  content: Text('Sorry,Acount not found'),backgroundColor: primary,));
              }else{
                Text('erorrrrrrrrrrrrrrrrrrrrr');
              }
            },
            child: OfflineBuilder(
              connectivityBuilder: (
                BuildContext context,
                ConnectivityResult connectivity,
                Widget child,
              ) {
                final bool connected = connectivity != ConnectivityResult.none;
                return connected
                    ? SizedBox(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  PopUpButton(themeProvider: themeProvider)
                                ],
                              ),
                              SizedBox_Height(
                                height: 10.sp,
                              ),
                              Container(width: 250,height: 200,child: Image.asset(knackChat,)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "login".tr(),
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: primary),
                                ),
                              ),
                              SizedBox_Height(height: 20),
                              UserTagTextField(
                                Controller: usertaglogincontroller,
                                labeltext: 'username'.tr(),
                              ),
                              SizedBox_Height(height: 10),
                              PasswordLoginTextField(
                                Controller: passwordlogincontroller,
                                labeltext: 'password'.tr(),
                              ),
                              SizedBox_Height(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10),
                                child: Row(
                                  children: [
                                    Text("don'thaveanaccount?".tr(),
                                        style: TextStyle(color: Colors.black54)),
                                    TextButton(
                                        onPressed: () {
                                          GoRouter.of(context)
                                              .go(Routes().signUp);
                                        },
                                        child: Text(
                                          'signup'.tr(),
                                          style: TextStyle(color: primary),
                                        ))
                                  ],
                                ),
                              ),
                              SizedBox_Height(height: 120),
                              MyButton(
                                  onpress: () {
                                    context.read<LoginBloc>().add(LoginSuccess(
                                        login: LoginRequsetModel(
                                            password: passwordlogincontroller.text,
                                            user_tag:
                                                usertaglogincontroller.text)));
                                                             // ShowDialog(context);
        
                                  },
                                  colors: themeProvider.currentTheme ==
                                          ThemeMode.light
                                      ? Colors.black
                                      : wHite,
                                  title: "login".tr(),
                                  radius: 30,
                                  height: 50,
                                  textcolor: themeProvider.currentTheme ==
                                          ThemeMode.light
                                      ? wHite
                                      : black,
                                  width: 350,
                                  boxshadow: BoxShadow(
                                      color: primary,
                                      blurRadius: 1,
                                      offset: Offset(3, 5))),
                            ],
                          ),
                        ),
                      )
                    : Loading();
              },
              child: Text(''),
            ),
          )),
        );
      }),
    );
  }
}

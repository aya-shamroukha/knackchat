  // ignore_for_file: non_constant_identifier_names, prefer_const_constructors

  import 'package:flutter/material.dart';
import 'package:uik/presentation/widgets/my_button.dart';

Future<dynamic> ShowModelBottomSheet(BuildContext context,TextEditingController schoolcontroller) {
    return showModalBottomSheet(
      
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33)),
                            context: context,
                            builder: (context) => SizedBox(
                              height: 277,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(22.0),
                                      child: Text(
                                        "Enter your school :",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(22.0),
                                      child: Container(
                                          width: 300,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[300],
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: TextField(
                                            //  autovalidateMode: AutovalidateMode.onUserInteraction,
                                            controller: schoolcontroller,
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                              errorMaxLines: 2,
                                              labelText: " School ",
                                              border: InputBorder.none,
                                            ),
                                          )),
                                    ),
                                    SizedBox(
                                        height: 55,
                                        width: 150,
                                        child: MyButton(
                                          boxshadow:  BoxShadow(
                  color: Colors.white, blurRadius: 0, offset: Offset(5, 5.3)),
                                          height: 50,
                                          textcolor: Colors.white,
                                          radius: 12,
                                          width: 350,
                                            title: "Add",
                                            onpress: () {},
                                            colors: Colors.black))
                                  ],
                                ),
                              ),
                            ),
                          );
  }
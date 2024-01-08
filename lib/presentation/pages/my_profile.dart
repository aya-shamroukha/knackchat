// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uik/presentation/bloc/getmy_profile/get_my_profile_bloc.dart';
import 'package:uik/presentation/widgets/mysizedbox.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:image_picker/image_picker.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});
  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  File? image;
  String? imagePath;
  final imagepicker = ImagePicker();
  uploadimagegallery() async {
    var pickedimage2 = await imagepicker.pickImage(source: ImageSource.gallery);
    Navigator.pop(context);

    if (pickedimage2 != null) {
      saveImage(pickedimage2.path.toString());
      setState(() {
        image = File(pickedimage2.path);
      });
    } else {}
  }

  uploadimagegallerycam() async {
    var pickedimage = await imagepicker.pickImage(source: ImageSource.camera);
    Navigator.pop(context);
    if (pickedimage != null) {
      saveImage(pickedimage.path.toString());
      setState(() {
        image = File(pickedimage.path);
      });
    } else {}
  }

  saveImage(String val) async {
    final imageshared = await SharedPreferences.getInstance();
    imageshared.setString('path', val);
    getImage();
  }

  getImage() async {
    final imageshared = await SharedPreferences.getInstance();
    setState(() {
      imagePath = imageshared.getString('path');
    });
  }

  @override
  void initState() {
    super.initState();
    getImage();
  }

  void deleteImage() async {
    final imageDel = await SharedPreferences.getInstance();
    imageDel.remove('path');
    getImage();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetMyProfileBloc()..add(GetMyProfile()),
      child: Builder(builder: (context) {
        return SizedBox(
            child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<GetMyProfileBloc, GetMyProfileState>(
                builder: (context, state) {
                  if (state is SuccessGetMyProfileState) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 220,
                          child: Stack(
                            children: [
                              Container(
                                height: 199,
                                decoration:
                                    BoxDecoration(color: Colors.grey[300]),
                                width: 250,
                                child: imagePath == null
                                    ? const Text('')
                                    : Image.file(
                                        File(imagePath!),
                                        fit: BoxFit.cover,
                                      ),
                              ),
                              Positioned(
                                  right: 0,
                                  top: 0,
                                  child: IconButton(
                                      onPressed: () {
                                        deleteImage();
                                      },
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: primary,
                                      ))),
                              Positioned(
                                  top: 160,
                                  right: 2,
                                  child: Center(
                                    child: CircleAvatar(
                                      backgroundColor: primary,
                                      radius: 30,
                                      child: Center(
                                        child: IconButton(
                                            onPressed: () {
                                              showBottomForImage(context);
                                            },
                                            icon: Icon(Icons.add_a_photo,
                                                color: wHite)),
                                      ),
                                    ),
                                  )),
                              Positioned(
                                right: 70,
                                top: 170,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${state.profileModel.first_name} ${state.profileModel.last_name}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: wHite,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                            title: Text(state.profileModel.user_tag),
                            leading: Icon(
                              Icons.person,
                              color: primary,
                            ),
                            subtitle: Text('username'.tr())),
                        const Divider(),
                        ListTile(
                          title: Text(state.profileModel.phone),
                          subtitle: Text('phonenumber'.tr()),
                          leading: Icon(
                            Icons.phone,
                            color: primary,
                          ),
                        ),
                        const Divider(),
                      ],
                    );
                  } else {
                    return Center(
                        child: Center(
                          child: CircularProgressIndicator(
                                              color: primary,
                                            ),
                        ));
                  }
                },
              )
            ],
          ),
        ));
      }),
    );
  }

  Future<dynamic> showBottomForImage(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              padding: const EdgeInsets.only(top: 20, left: 10),
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "pleasechooseimage".tr(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primary),
                  ),
                  InkWell(
                    onTap: uploadimagegallery,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.photo,
                            color: primary,
                          ),
                          const SizedBox_width(
                            width: 20,
                          ),
                          Text(
                            "fromGallery".tr(),
                            style: const TextStyle(
                                fontSize: 15, fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: uploadimagegallerycam,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.camera,
                            color: primary,
                          ),
                          const SizedBox_width(
                            width: 20,
                          ),
                          Text(
                            "fromcamera".tr(),
                            // style: const TextStyle(
                            //     fontSize: 15,
                            //     fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uik/data/localStorge/localstorge.dart';
import 'package:uik/data/service/teacher_services.dart';
import 'package:uik/presentation/bloc/show_teacher/showteacher_bloc.dart';
import 'package:uik/presentation/pages/loading.dart';
import 'package:uik/presentation/pages/teacher_quiz.dart';
import 'package:uik/presentation/pages/teacher_collection.dart';
import 'package:uik/presentation/pages/about_teacher.dart';
import 'package:uik/presentation/widgets/circleavatar.dart';
import 'package:uik/presentation/widgets/tabbar.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/route_manger.dart';

class TeacherProfile extends StatelessWidget {
  final double imageHeight = 170;
  final double profileHeight = 70;
  const TeacherProfile({super.key});
  @override
  Widget build(BuildContext context) {
    final top = imageHeight - profileHeight / 1.5;
       
        return BlocProvider(
          create: (context) => ShowteacherBloc(TeacherImpl())..add(GetShowTeacher(id: 
           getIt.get<SharedPreferences>().getInt('id'))),
          child: Builder(
            builder: (context) {
              return SizedBox(
                width: 300,
                child: DefaultTabController(
                    length: 3,
                    child: SafeArea(
                      child: Scaffold(
                        body:
                       OfflineBuilder(
                         connectivityBuilder: (
                                  BuildContext context,
                                  ConnectivityResult connectivity,
                                  Widget child,
                                ){
                                   final bool connected = connectivity != ConnectivityResult.none;
                                  return connected?
                          BlocBuilder<ShowteacherBloc, ShowteacherState>(
                           builder: (context, state) {
                             if (state is SuccessShowTeacher) {                           
                                     return Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                         Stack(
                                           clipBehavior: Clip.none,
                                           alignment: Alignment.center,
                                           children: [
                                             SizedBox(
                                               width: double.infinity,
                                               height: imageHeight,
                                               child: Image.asset(
                                                 "assets/images/r.jpg",
                                                 fit: BoxFit.cover,
                                               ),
                                             ),
                                             Positioned(
                                               top: top,
                                               child: myCircleAvatar(
                                                 profileHeight: profileHeight,
                                                 image: Icon(Icons.person),
                                               ),
                                             ),
                                              Positioned(
                                               top: 10,
                                               left: 0,
                                               child: 
                       IconButton(onPressed: (){GoRouter.of(context).go(Routes().bottom);}, 
                       icon: Icon(Icons.keyboard_backspace_sharp,color: wHite,)),
                       
                                             ),
                                           ],
                                         ),
                                         SizedBox(
                                           height: 66,
                                         ),
                                         Text(
                                            '${state.showteacher.user.first_name} ${state.showteacher.user.last_name}',
                                           style: TextStyle(
                                               fontSize: 22, fontWeight: FontWeight.w700),
                                         ),
                                         SizedBox(
                                           height: 5,
                                         ),
                                         
                                     
                                         //   MyButton(title: "Follow", onpress: () {}, colors: Colors.black),
                                         Padding(
                                           padding: const EdgeInsets.symmetric(horizontal:8.0),
                                           child: tabBar("quizer".tr(), "collection".tr(), "about".tr()),
                                         ),
                                         Expanded(
                                           child: TabBarView(
                                             children: [
                                               QuizTeacherPage(),
                                               TeacherCollection(),
                                               AboutTeacher(),
                                             ],
                                           ),
                                         ),
                                       ],
                                     );
                                 
                             } else {
                               return Center(child: CircularProgressIndicator(color: primary,));
                             }
                           },
                         ):Loading();
                                  } , child: Text(''),)
                                  ),
                    )),
              );
            }
          ),
        );
     
  }
}

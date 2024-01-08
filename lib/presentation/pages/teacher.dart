// ignore_for_file: prefer_const_constructors, avoid_print
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uik/data/localStorge/localstorge.dart';
import 'package:uik/data/service/students_services.dart';
import 'package:uik/data/service/teacher_services.dart';
import 'package:uik/domain/models/teacher_model/index_teacher.dart';
import 'package:uik/presentation/bloc/follow_teacher/followteacher_bloc.dart';
import 'package:uik/presentation/bloc/get_teacher/get_teacher_bloc.dart';
import 'package:uik/presentation/bloc/show_teacher/showteacher_bloc.dart';
import 'package:uik/presentation/pages/loading.dart';
import 'package:uik/presentation/widgets/my_button.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/route_manger.dart';
import 'package:uik/utilities/constant/theme_manger.dart';
import '../widgets/shimmer_child.dart';
class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
   // bool isVisibility = true;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                GetTeacherBloc(TeacherImpl())..add(GetTeacher())),
        BlocProvider(
            create: (context) => FollowteacherBloc(StudentServicesImpl())),
        BlocProvider(create: (context) => ShowteacherBloc(TeacherImpl())),
      ],
      child: Scaffold(
        backgroundColor: wHite,
        body: OfflineBuilder(
           connectivityBuilder: (
              BuildContext context,
              ConnectivityResult connectivity,
              Widget child,
            ){
               final bool connected = connectivity != ConnectivityResult.none;
              return connected?
           SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "allteachers".tr(),
                        style: (TextStyle(
                            color: primary,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                      ),
                      IconButton(
                          onPressed: () {
                            GoRouter.of(context).go(Routes().search);
                            // showSearch(context: context, delegate: CoustomSearch(),);
                          },
                          icon: Icon(Icons.search))
                    ],
                  ),
                ),
                BlocBuilder<GetTeacherBloc, GetTeacherState>(
                  builder: (context, state) {
                    if (state is SuccessGetTeacher) {
                      List<GetTeacherModel> getteacher = state.getteacher;
                      return Expanded(
                          child: ListView.builder(
                            physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                              itemCount: getteacher.length,
                              itemBuilder: (context, index) {
                                return BlocBuilder<ShowteacherBloc,
                                    ShowteacherState>(
                                  builder: (context, stat) {
                                    return InkWell(
                                      onTap: () {
                                        context.read<ShowteacherBloc>().add(
                                            GetShowTeacher(
                                                id: state.getteacher[index].id));
                                        getIt.get<SharedPreferences>().setInt(
                                              'id',
                                              state.getteacher[index].id,
                                            );
                                        // print(state.getteacher[index].user.id);
                                        GoRouter.of(context)
                                            .go(Routes().teacherProfile);
                                      },
                                      child: ListTile(
                                          leading: CircleAvatar(
                                            backgroundColor: circle,
                                            child: Icon(
                                              Icons.person,
                                              color: wHite,
                                              size: 30,
                                            ),
                                          ),
                                          title: Text(
                                              '${getteacher[index].user.first_name} ${getteacher[index].user.middle_name} ${getteacher[index].user.last_name}'),
                                          subtitle:
                                              Text(getteacher[index].user.phone),
                                          trailing: BlocListener<
                                              FollowteacherBloc,
                                              FollowteacherState>(
                                            listener: (context, state) {
                                              //            print(isVisibility);
                                              //   if(state is ErrorFollowState){
                                              //    changeFollow(isVisibility);
                                              //            print(isVisibility);
        
                                              //   }if(isVisibility==true){
                                              // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('folow')));
        
                                              // };
                                            },
                                            child: StatefulBuilder(
                                              builder: (context, setState) {
                                                print(getteacher);
                                                return Visibility(
                                                  visible: state.getteacher[index]
                                                      .is_followed,
                                                  replacement: MyButton(
                                                      onpress: () {
                                                         print(state.getteacher[index]
                                                      .is_followed);
                                                        context
                                                            .read<
                                                                FollowteacherBloc>()
                                                            .add(FollowTeachersEvent(
                                                                id: state.getteacher[index].id));
                                                      },
                                                      colors: themeProvider.currentTheme ==
                                                              ThemeMode.light
                                                          ? Colors.black: wHite,
                                                      title: "follow".tr(),
                                                      radius: 30,height: 50,
                                                      textcolor: themeProvider.currentTheme ==
                                                              ThemeMode.light
                                                          ? wHite: black,
                                                      width: 80,
                                                      boxshadow: BoxShadow(
                                                          color: primary,blurRadius: 1,
                                                          offset: Offset(3, 3))),
                                                  child: MyButton(
                                                      onpress: () {
                                                        print(state.getteacher[index]
                                                      .is_followed);
                                                        context
                                                            .read<
                                                                FollowteacherBloc>()
                                                            .add(FollowTeachersEvent(
                                                                id: state.getteacher[index].id));
                                                      },
                                                      colors: themeProvider.currentTheme ==
                                                              ThemeMode.light
                                                          ? Colors.black: wHite,
                                                      title: "unfollow",
                                                      radius: 30,height: 50,
                                                      textcolor: themeProvider.currentTheme ==
                                                              ThemeMode.light
                                                          ? wHite: black,
                                                      width: 80,
                                                      boxshadow: BoxShadow(
                                                          color: primary,
                                                          blurRadius: 1,
                                                          offset: Offset(3, 5))),
                                                );
                                              },
                                            ),
                                          )),
                                    );
                                  },
                                );
                              }));
                    } else {
                      return Expanded(
                        child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: ((context, index) {
                              return Shimmer.fromColors(
                                baseColor: Colors.grey.shade300,
                                highlightColor: Colors.grey.shade100,
                                child: ShimmerBodyForTeacher(),
                              );
                            })),
                      );
                    }
                  },
                ),
              ],
            ),
          ):Loading();
          },
       child: Text(''), ),
      ),
    );
  }
}



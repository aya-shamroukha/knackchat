import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uik/data/localStorge/localstorge.dart';
import 'package:uik/presentation/bloc/all_quiz_in_subject/all_quiz_in_subject_bloc.dart';
import 'package:uik/presentation/bloc/subject_by_speciality/bloc/subject_by_speciality_bloc.dart';
import 'package:uik/presentation/widgets/shimmer_child.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/route_manger.dart';

class SubjectPage extends StatelessWidget {
  SubjectPage({super.key});
  final List images = [
    {'image': "assets/images/science2.jpg"},
    {'image': "assets/images/math2.jpg"},
    {'image': "assets/images/earth2.jpg"},
    {'image': "assets/images/english.jpg"},
    {'image': "assets/images/arabic.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SubjectBySpecialityBloc()..add(GetSubject()),
        ),
        BlocProvider(
          create: (context) => AllQuizInSubjectBloc(),
        )
      ],
      child: Builder(builder: (context) {
        return SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Scaffold(
            body:
                BlocBuilder<SubjectBySpecialityBloc, SubjectBySpecialityState>(
                    builder: (context, state) {
              if (state is SuccessGetSubject) {
                return SizedBox(
                  height: double.maxFinite,
                  child: Expanded(
                    child: ListView.builder(
                      physics: ScrollPhysics(parent: BouncingScrollPhysics()),

                        scrollDirection: Axis.vertical,
                        itemCount: state.subject.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10),
                            child: BlocBuilder<AllQuizInSubjectBloc, AllQuizInSubjectState>(
                              builder: (context, stat) {
                                return InkWell(
                                  onTap: () {
                                    context.read<AllQuizInSubjectBloc>().add(
                                            GetAllQuiz(
                                                id: state.subject[index].id));
                                        getIt.get<SharedPreferences>().setInt(
                                              'id_index',
                                              state.subject[index].id,
                                            );
                                              GoRouter.of(context)
                                            .go(Routes().quizInSubject);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                              blurStyle: BlurStyle.inner,
                                              color: index.isOdd?primary:pink,
                                              blurRadius: 3,
                                              offset: Offset(4, -3))
                                        ]),
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                                images[index]['image'],
                                                fit: BoxFit.fill)),
                                         Positioned(
                                          bottom: 0,left: 0,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(state.subject[index].subject,style: TextStyle(color:black,fontWeight: FontWeight.bold),),
                                          ))
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        }),
                  ),
                );
              } else {
                return SizedBox(
                    height: double.maxFinite,
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 10,
                          itemBuilder: ((context, index) {
                            return Shimmer.fromColors(
                              baseColor: Colors.grey.shade300,
                              highlightColor: Colors.grey.shade100,
                              child: const ShimmerBodyForSubject(),
                            );
                          })),
                    ));
              }
            }),
          ),
        ));
      }),
    );
  }
}

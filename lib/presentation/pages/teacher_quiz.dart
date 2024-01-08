import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uik/data/localStorge/localstorge.dart';
import 'package:uik/presentation/bloc/quiz_teacher/quiz_teacher_bloc.dart';
import 'package:uik/presentation/widgets/shimmer_child.dart';

class QuizTeacherPage extends StatelessWidget {
  const QuizTeacherPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizTeacherBloc()..add(GetQuizTeacher(id: 
           getIt.get<SharedPreferences>().getInt('id'))),
      child: Builder(builder: (context) {
        return Scaffold(
          body: BlocBuilder<QuizTeacherBloc, QuizTeacherState>(
            builder: (context, state) {
              if(state is SuccessQuizTeacher){
return ListView.builder(
  physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                itemCount: state.quizmodel.length, // Example number of items
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(state.quizmodel[index].quiz,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  );
                },
              );
              }else{
                return SizedBox(
                  height: 500,
                  child: Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        itemBuilder: ((context, index) {
                          return Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: ShimmerBodyForQuiz(),
                          );
                        })),
                  ),
                );
              }
              
            },
          ),
        );
      }),
    );
  }
}

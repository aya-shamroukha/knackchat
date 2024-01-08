import 'package:flutter/material.dart';
import 'package:uik/presentation/bloc/quiz/quiz_bloc.dart';

import '../bloc/get_quiz/get_quiz_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:uik/presentation/cubits/bloc/quiz/quiz_bloc.dart';

// ignore: must_be_immutable
class Quiz extends StatelessWidget {
  Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    var deltaTime = DateTime.now();
    // DateTime t1 = DateTime.now().add(Duration(seconds: 3));
    // DateTime t2 = DateTime.now();
    //  Duration t3 = t1.difference(t2);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetQuizBloc()..add(GetQuiz()),
        ),
        BlocProvider(
          create: (context) => QuizBloc(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.output_outlined,
              color: Colors.black,
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: BlocBuilder<GetQuizBloc, GetQuizState>(
          builder: (context, state) {
            if (state is SuccessGetQuiz) {
              return BlocListener<QuizBloc, QuizState>(
                listener: (context, st) {
                  if (deltaTime.difference(DateTime.now()) >
                      state.question[0].duration) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('time is ended!'),
                      backgroundColor: Colors.blue,
                    ));
                  } else {
                    if (st is Correct) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Correct!'),
                        backgroundColor: Colors.green,
                      ));
                    } else if (st is Incorrect) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(' Incorrect!'),
                        backgroundColor: Colors.red,
                      ));
                    }
                  }
                },
                // if (t1.compareTo(t2) == 0) {
                //   print("Both date time are at same moment.");
                // }

                // if (t2.compareTo(t1) < 0) {
                //   print("DT1 is before DT2");
                // }

                // {
                //   print("${t3.inSeconds}");
                // }

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        "${state.question[0].question}",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      SizedBox(
                        width: 333,
                        height: 400,
                        child: GridView.builder(
                          itemCount: state.question[0].answers.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 4,
                                  crossAxisSpacing: 4),
                          itemBuilder: (context, index) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(33),
                              onTap: () {
                                context.read<QuizBloc>().add(Ans(
                                    is_correct: state
                                        .question[0].answers[0].iscorrect));
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22)),
                                elevation: 7,
                                color: Colors.blueGrey,
                                shadowColor: Colors.blueGrey,
                                child: Center(
                                    child: Text(
                                  "${state.question[0].answers[1].answer_text}",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                )),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else if (state is LoadingGetQuiz) {
              return CircularProgressIndicator();
            } else {
              return Center(child: Text("Error"));
            }
          },
        ),
      ),
    );
  }
}

    // children: [
    //                           InkWell(
    //                             onTap: () {
    //                               context.read<QuizBloc>().add(Ans(
    //                                   is_correct: state
    //                                       .question[0].answers[0].iscorrect));
    //                             },
    //                             child: Card(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(22)),
    //                               elevation: 7,
    //                               color: Colors.blueGrey,
    //                               shadowColor: Colors.blueGrey,
    //                               child: Center(
    //                                   child: Text(
    //                                 "${state.question[0].answers[0].answer_text}",
    //                                 style: TextStyle(
    //                                     fontSize: 17,
    //                                     fontWeight: FontWeight.w400),
    //                               )),
    //                             ),
    //                           ),
    //                           InkWell(
    //                             onTap: () {
    //                               context.read<QuizBloc>().add(Ans(
    //                                   is_correct: state
    //                                       .question[0].answers[1].iscorrect));
    //                             },
    //                             child: Card(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(22)),
    //                               elevation: 7,
    //                               color: Colors.blueGrey,
    //                               shadowColor: Colors.blueGrey,
    //                               child: Center(
    //                                   child: Text(
    //                                 "${state.question[0].answers[1].answer_text}",
    //                                 style: TextStyle(
    //                                     fontSize: 17,
    //                                     fontWeight: FontWeight.w400),
    //                               )),
    //                             ),
    //                           ),
    //                           InkWell(
    //                             onTap: () {
    //                               context.read<QuizBloc>().add(Ans(
    //                                   is_correct: state
    //                                       .question[0].answers[2].iscorrect));
    //                             },
    //                             child: Card(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(22)),
    //                               elevation: 7,
    //                               color: Colors.blueGrey,
    //                               shadowColor: Colors.blueGrey,
    //                               child: Center(
    //                                   child: Text(
    //                                 "${state.question[0].answers[2].answer_text}",
    //                                 style: TextStyle(
    //                                     fontSize: 17,
    //                                     fontWeight: FontWeight.w400),
    //                               )),
    //                             ),
    //                           ),
    //                           InkWell(
    //                             onTap: () {
    //                               context.read<QuizBloc>().add(Ans(
    //                                   is_correct: state
    //                                       .question[0].answers[3].iscorrect));
    //                             },
    //                             child: Card(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(22)),
    //                               elevation: 7,
    //                               color: Colors.blueGrey,
    //                               shadowColor: Colors.blueGrey,
    //                               child: Center(
    //                                   child: Text(
    //                                 "${state.question[0].answers[3].answer_text}",
    //                                 style: TextStyle(
    //                                     fontSize: 17,
    //                                     fontWeight: FontWeight.w400),
    //                               )),
    //                             ),
    //                           ),
    //                         ]

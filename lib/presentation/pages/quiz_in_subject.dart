import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uik/data/localStorge/localstorge.dart';
import 'package:uik/presentation/bloc/all_quiz_in_subject/all_quiz_in_subject_bloc.dart';
import 'package:uik/presentation/widgets/my_card.dart';
import 'package:uik/presentation/widgets/shimmer_child.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/images.dart';
import 'package:uik/utilities/constant/route_manger.dart';
class QuizInSubject extends StatelessWidget {
  const QuizInSubject({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AllQuizInSubjectBloc()..add(GetAllQuiz(id:getIt.get<SharedPreferences>().getInt('id_index'))),
      child: Builder(builder: (context){
        return  SafeArea(child: Scaffold(body: 
        Column(
          children: [
                Container(
                  height: 30,width: 20,
                  child: IconButton(onPressed: (){GoRouter.of(context).go(Routes().bottom);}, 
                         icon: Icon(Icons.keyboard_backspace_sharp,color: black,)),
                ),
            // Text('Quiz:',style: TextStyle(
            //                   fontStyle: FontStyle.italic,
            //                   fontWeight: FontWeight.w400,
            //                   color: primary),),
            BlocBuilder<AllQuizInSubjectBloc, AllQuizInSubjectState>(
              builder: (context, state) {
                if(state is SuccessGetQuiz){
                return SizedBox(
                  height: 700,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: state.quizinsubject.length,
                      itemBuilder: (context,index){
                                     
                          return  Row(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [BoxShadow(
                                                  blurStyle: BlurStyle.inner,
                                                  color: primary,blurRadius: 5,offset:const Offset(2, 2.7))]),
                                child:
                                 MyInkwellCard(image1:Image.asset(math2) ,row1:Text(state.quizinsubject[index].quiz) ,
                                row2: Container(
                                    decoration: BoxDecoration(color: primary.withOpacity(0.97),
                                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12),topRight: Radius.circular(20))
                                    ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(state.quizinsubject[index].teacher[index].about,style: TextStyle(color: wHite)),
                                  )),)),
                                Text(state.quizinsubject[index].question[index].question)
                            ],
                          ) ;
                      }),
                  ),
                );  
                }else{
                   return Expanded(
                     child: ListView.builder(
                         scrollDirection: Axis.vertical,
                         itemCount: 10,
                         itemBuilder: ((context, index) {
                           return Shimmer.fromColors(
                             baseColor: Colors.grey.shade300,
                             highlightColor: Colors.grey.shade100,
                             child: const ShimmerBodyForQuiz()
                           );
                         })),
                   );
                }
                
              },
            ),
          ],
        )
        ,));
      }),
    );
  }
}
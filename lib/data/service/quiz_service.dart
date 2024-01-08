// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

abstract class QuizService{
  topQuiz();
  indexAllTeacherQuizzes(int id);
  allQuizInSubject(int id);
}
class QuizImpl extends QuizService{
  @override
  topQuiz() async{
   Dio dio=Dio();
   Response response=await dio.get('https://testknackchat.000webhostapp.com/api/quiz/top-quizzes/teacher/3',
    options: Options(
   sendTimeout: Duration(seconds: 60),)
   );
    print(response);
   if( response.statusCode==200){
   
    return response.data;
   }
  }
  
  @override
  indexAllTeacherQuizzes(id) async{
   Dio dio=Dio();
   Response response=await dio.get('https://testknackchat.000webhostapp.com/api/quiz/teacher/$id');
   
   if( response.statusCode==200){
    return response.data;
   }
  }
  
  @override
  allQuizInSubject(int id) async{
  Dio dio=Dio();
   Response response=await dio.get('https://testknackchat.000webhostapp.com/api/quiz/subject/$id');
    print(response);
   if( response.statusCode==200){
    print(response);
    return response.data;
   }
  }

}
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uik/data/localStorge/localstorge.dart';

abstract class TeacherServices{

  indexTeacher();
  searchTeacher(String search);
  showTeacher( int id);
} 
class TeacherImpl extends TeacherServices{
  @override
  indexTeacher()async {
   Dio dio=Dio();
   
   Response response=await dio.get('https://testknackchat.000webhostapp.com/api/teacher/',
    options: Options(headers: {  "Authorization":"Bearer 3|laravel_sanctum_QOdeC1vqROMVK7hdpxD8dQFyzShP5bTDUMpaD8OJ7c2c79b0"}));
    //print(response);
   if( response.statusCode==200){
   
    return response.data;
   }
  }
  
  @override
  searchTeacher(search) async{
    Dio dio=Dio();
   Response response=await dio.get('https://testknackchat.000webhostapp.com/api/teacher/search/?name=${search}',
   options: Options(headers: {  "Authorization":"Bearer ${getIt.get<SharedPreferences>().getString('access_token')}"}));
   // print(response);
   if( response.statusCode==200){
   
    return response.data;
   }
  }
  
  @override
  showTeacher(id)async {
    Dio dio=Dio();
    print(id);
   Response response=await dio.get('https://testknackchat.000webhostapp.com/api/teacher/${id}',
    options: Options(headers: {  "Authorization":"Bearer 3|laravel_sanctum_QOdeC1vqROMVK7hdpxD8dQFyzShP5bTDUMpaD8OJ7c2c79b0"}));
   //  print(response);
   if( response.statusCode==200){
      // print(response);

    return response.data;
   }else{
    print('------eror');
    return 'error';
   }
  }

}
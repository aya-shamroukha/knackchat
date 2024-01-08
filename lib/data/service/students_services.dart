import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uik/data/localStorge/localstorge.dart';
import 'package:uik/domain/models/student_model/unfollow.dart';

abstract class StudentServices {
  follow(int id);
  unFollow(UnFollowTeeacherModel unfollow);
  subjectBySpeaciality();
  getMyProfile();
}
class StudentServicesImpl extends StudentServices{
  @override
  follow( int id) async{
   Dio dio=Dio();
   Response response=await dio.post('https://testknackchat.000webhostapp.com/api/follow/teacher/${id}' ,
    options: Options(
      headers: {"Authorization":"Bearer ${getIt.get<SharedPreferences>().getString('access_token')}",
    "Accept":"application/json"
    }));
   if( response.statusCode==201){
    
       print(response);

    return response.data;
   }else{
     print('----------------errererere');
    return 'errore';
   }
  }

  @override
  unFollow( unfollow) {
  
  }
  
  @override
  subjectBySpeaciality()async {
 Dio dio=Dio();
   Response response=await dio.get('https://testknackchat.000webhostapp.com/api/subject/1' ,
    options: Options(
      headers: {
    "Accept":"application/json"
    }));
    print(response);
   if( response.statusCode==200){
       print(response);
    return response.data;
   }else{
     print('----------------errererere');
    return 'errore';
   }
  }
  
  @override
  getMyProfile() async{
  Dio dio=Dio();
   Response response=await dio.get('https://testknackchat.000webhostapp.com/api/user/my-profile' ,
    options: Options(
      headers: {
    "Accept":"application/json",
    "Authorization":"Bearer ${getIt.get<SharedPreferences>().getString('access_token')}"
    }));
    print(response);
   if( response.statusCode==200){
       print(response);
    return response.data;
   }else{
     print('----------------errererere');
    return 'errore';
   }
  }

}
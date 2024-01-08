// ignore_for_file: avoid_print, avoid_renaming_method_parameters, unnecessary_new
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uik/data/localStorge/localstorge.dart';
import 'package:uik/domain/models/auth_models/login.dart';
import 'package:uik/domain/models/auth_models/logout.dart';
import 'package:uik/domain/models/auth_models/signup.dart';

abstract class AuthService {
 signUp(CreateUserModelRequset data,);
bool logIn(LoginRequsetModel login);
logOut(LogOutModel data);
deleteAccount();
}
class AuthImple extends AuthService {
  @override
  logIn( login)async {
    
     print(login.toString());
    Dio dio=Dio();
     try{ Response response=await dio.post('https://testknackchat.000webhostapp.com/api/user/login',data: login.toJson(),
    options: Options(
    sendTimeout: Duration(seconds: 60),
        headers: {
          "Accept":"application/json",
          "Connection":"keep-alive"
        }
      ),);
    // print(response);
    if (response.statusCode==200){
    print(response.data['data']['access_token']);
      getIt.get<SharedPreferences>().setString(
          'access_token', response.data['data']['access_token']);
          print('trueeeeeeeeeee');
      return true;
      
    }
else {          print('falseeeee');

  return false;
}    }catch(e){
  return e;
}
   
 
  
}
  @override
  signUp(CreateUserModelRequset usermodel,) async {

    FormData formData = 
    new FormData.fromMap(usermodel.toMap());
    
  //  print(usermodel.toString());
  //  print(formData);
    Dio dio = Dio();
    Response response = await dio.post("https://testknackchat.000webhostapp.com/api/user/register",

    options: Options(
      sendTimeout: const Duration(seconds: 60),
        headers: {
          "Accept":"application/json",
        }
      ),
        data:   formData);
      //  print(response);
    if (response.statusCode == 200) {
      print(response.data['data']['token']);
      getIt.get<SharedPreferences>().setString(
          'token', response.data['data']['token']);
      return true;
    }
else {
  return false;
}    
  }
  
  @override
  logOut(LogOutModel data) async{
    Dio dio=Dio();
     
    Response response=await dio.post('https://testknackchat.000webhostapp.com/api/user/logout',data: data.toJson());
    
    if (response.statusCode==200){
   
   
      return response.data;
    }
    else{
      return 'error';
    }
  }
  

  
  @override
  deleteAccount()async {
               Dio dio =Dio();
               // ignore: unused_local_variable
               Response response=await  dio.delete("http://159.89.202.33/api/user/delete-my-account");
               return null;
  }
}


// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uik/data/service/auth_service.dart';
import 'package:uik/domain/models/auth_models/login.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  
  LoginBloc() : super(LoginInitial()) {
emit(LoadingState());
    on<LoginSuccess>((event, emit) async{
      try{
        bool isSuccess = await AuthImple().logIn(event.login);

if(isSuccess){
    emit(LoginSuccessState());
}
else{
  emit(LoginFailed());
}
}
catch(e){
emit(LoginFailed());
}
 
//  if(isSuccess is LoginModel){
  
//   emit(LoginSuccessState(loginresponse: logindata));
//  }else{
//   emit(LoginFailed());
//  }
//  List<LoginModel> logindata=List.generate(
//         isSuccess['user'].length, (index) => LoginModel.fromMap((isSuccess['data'][index])));
          // if(isSuccess.isSuccess==true){

          //  emit(LoginSuccessState(loginresponse: ));
         // }
    });
  }
}

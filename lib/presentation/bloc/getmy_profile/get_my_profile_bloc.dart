import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uik/data/service/students_services.dart';
import 'package:uik/domain/models/student_model/getmy_profile.dart';

part 'get_my_profile_event.dart';
part 'get_my_profile_state.dart';

class GetMyProfileBloc extends Bloc<GetMyProfileEvent, GetMyProfileState> {
  GetMyProfileBloc() : super(GetMyProfileInitial()) {
    on<GetMyProfile>((event, emit) async{
      var profilemodel= await StudentServicesImpl().getMyProfile();
      GetMyProfileModel getprofiledata=
         GetMyProfileModel.fromMap((profilemodel['data']));
      emit(SuccessGetMyProfileState(profileModel:getprofiledata));


    });


    }
  }


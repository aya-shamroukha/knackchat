// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:uik/data/service/teacher_services.dart';
import 'package:uik/domain/models/teacher_model/index_teacher.dart';

part 'get_teacher_event.dart';
part 'get_teacher_state.dart';

class GetTeacherBloc extends Bloc<GetTeacherEvent, GetTeacherState> {
  final TeacherServices teacherServices;
  GetTeacherBloc(
    this.teacherServices,
  ) : super(GetTeacherInitial()) {
    on<GetTeacher>((event, emit)async {
           var teacher= await teacherServices.indexTeacher();
      List<GetTeacherModel> teacherdata=List.generate(
        teacher['data'].length, (index) => GetTeacherModel.fromMap((teacher['data'][index])));
      emit(SuccessGetTeacher(getteacher:teacherdata ));
    });
    
  }
}

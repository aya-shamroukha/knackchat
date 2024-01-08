// ignore_for_file: avoid_print

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uik/data/service/teacher_services.dart';
import 'package:uik/domain/models/teacher_model/show_teacher.dart';

part 'showteacher_event.dart';
part 'showteacher_state.dart';

class ShowteacherBloc extends Bloc<ShowteacherEvent, ShowteacherState> {
  final TeacherServices teacherServices;

  ShowteacherBloc(this.teacherServices) : super(ShowteacherInitial()) {
    on<GetShowTeacher>((event, emit) async{
 var showteacher= await teacherServices.showTeacher(event.id);

 print("-----------------------");
 print(event.id);
 print(showteacher);
      ShowTeacherModel showteacherdata=
         ShowTeacherModel.fromMap((showteacher['data']));
         print(showteacherdata);
      emit(SuccessShowTeacher(showteacher:showteacherdata ));


    });
  }
}

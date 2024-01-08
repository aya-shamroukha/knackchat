
// ignore_for_file: avoid_print

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uik/data/service/students_services.dart';
part 'followteacher_event.dart';
part 'followteacher_state.dart';

class FollowteacherBloc extends Bloc<FollowteacherEvent, FollowteacherState> {
            final StudentServicesImpl studentServicesImpl;
  FollowteacherBloc(this.studentServicesImpl) : super(FollowteacherInitial()) {
   bool isfollow=false;
    on<FollowTeachersEvent>((event, emit)async {
     dynamic x = await studentServicesImpl.follow(event.id);
     print(event.id);
     print(x);
     
             isfollow =!isfollow;
            emit(FollowSuccess(isFollow: isfollow));
           
    
  // List<FollowTeacher> followdata=List.generate(
  //       followteacher.length, (index) => FollowTeacher.fromMap((followteacher[index])));
  //                emit(FollowSuccess(followteacher: followdata,isFollow: event.isFollow));
      
      
    });
 
  }
}

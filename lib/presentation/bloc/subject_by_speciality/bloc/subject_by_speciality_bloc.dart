import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uik/data/service/students_services.dart';
import 'package:uik/domain/models/subject_model/subject_by_speciality_model.dart';

part 'subject_by_speciality_event.dart';
part 'subject_by_speciality_state.dart';

class SubjectBySpecialityBloc extends Bloc<SubjectBySpecialityEvent, SubjectBySpecialityState> {
  SubjectBySpecialityBloc() : super(SubjectBySpecialityInitial()) {
    on<GetSubject>((event, emit)async {
      print('success bloc');
      var subjectt= await StudentServicesImpl().subjectBySpeaciality();
      List<SubjectBySpeacialityModel> subjectdata=
      List.generate(subjectt['subjects'].length, (index) => SubjectBySpeacialityModel.fromMap(subjectt['subjects'][index]));
     emit(SuccessGetSubject(subject: subjectdata));
    });
  }
}

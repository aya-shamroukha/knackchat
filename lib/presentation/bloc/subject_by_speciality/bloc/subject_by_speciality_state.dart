// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'subject_by_speciality_bloc.dart';

sealed class SubjectBySpecialityState extends Equatable {
  const SubjectBySpecialityState();
  
  @override
  List<Object> get props => [];
}

final class SubjectBySpecialityInitial extends SubjectBySpecialityState {}
class SuccessGetSubject extends SubjectBySpecialityState {
 final List<SubjectBySpeacialityModel> subject;
  SuccessGetSubject({
    required this.subject,
  });
   @override
  List<Object> get props => [subject];
}

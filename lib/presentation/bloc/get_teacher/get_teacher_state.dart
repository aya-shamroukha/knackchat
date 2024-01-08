// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors_in_immutables
part of 'get_teacher_bloc.dart';

 class GetTeacherState extends Equatable {
  const GetTeacherState();
  
  @override
  List<Object> get props => [];
}

 class GetTeacherInitial extends GetTeacherState {}
class SuccessGetTeacher extends GetTeacherState {
  final List<GetTeacherModel> getteacher;
  SuccessGetTeacher({
    required this.getteacher,
  });
    @override
  List<Object> get props => [getteacher];
}class ErrorState extends GetTeacherState{}

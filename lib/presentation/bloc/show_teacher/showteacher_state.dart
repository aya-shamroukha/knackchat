// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'showteacher_bloc.dart';

sealed class ShowteacherState extends Equatable {
  const ShowteacherState();
  
  @override
  List<Object> get props => [];
}

 class ShowteacherInitial extends ShowteacherState {}
class SuccessShowTeacher extends ShowteacherState {
final ShowTeacherModel showteacher;

  SuccessShowTeacher({required this.showteacher}); 
   @override
  List<Object> get props => [showteacher];
 }

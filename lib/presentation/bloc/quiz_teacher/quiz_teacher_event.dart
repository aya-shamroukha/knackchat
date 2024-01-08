part of 'quiz_teacher_bloc.dart';

sealed class QuizTeacherEvent extends Equatable {
  const QuizTeacherEvent();

  @override
  List<Object> get props => [];
}
class GetQuizTeacher extends QuizTeacherEvent{
   final dynamic id;

  GetQuizTeacher({required this.id});
   @override
  List<Object> get props => [id];

}
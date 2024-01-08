part of 'quiz_teacher_bloc.dart';

sealed class QuizTeacherState extends Equatable {
  const QuizTeacherState();
  
  @override
  List<Object> get props => [];
}

final class QuizTeacherInitial extends QuizTeacherState {}
class SuccessQuizTeacher extends QuizTeacherState{
  final List<QuizTeacher> quizmodel;

  @override
  List<Object> get props => [quizmodel];

  SuccessQuizTeacher({required this.quizmodel});
}
// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'get_quiz_bloc.dart';

@immutable
sealed class GetQuizState {}

final class GetQuizInitial extends GetQuizState {}

class SuccessGetQuiz extends GetQuizState {
  final List<QuizModel> question;
  SuccessGetQuiz({
    required this.question,
  });
}

class LoadingGetQuiz extends GetQuizState {}

class ErrorGetQuiz extends GetQuizState {}

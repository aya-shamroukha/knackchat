part of 'quiz_bloc.dart';

@immutable
sealed class QuizState {}

final class QuizInitial extends QuizState {}

class Correct extends QuizState {}

class Incorrect extends QuizState {}

class EndTime extends QuizState {}

class LoadingQuiz extends QuizState{}
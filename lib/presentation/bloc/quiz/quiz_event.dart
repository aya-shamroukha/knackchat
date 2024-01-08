// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'quiz_bloc.dart';

@immutable
sealed class QuizEvent {}

class Ans extends QuizEvent {
  bool is_correct;
  Ans({
    required this.is_correct,
  });
}



part of 'all_quiz_in_subject_bloc.dart';

sealed class AllQuizInSubjectEvent extends Equatable {
  const AllQuizInSubjectEvent();

  @override
  List<Object> get props => [];
}
class GetAllQuiz extends AllQuizInSubjectEvent{
final dynamic id;

  GetAllQuiz({required this.id});
  @override
  List<Object> get props => [id];
}

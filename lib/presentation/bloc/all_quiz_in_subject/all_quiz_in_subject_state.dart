// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'all_quiz_in_subject_bloc.dart';

sealed class AllQuizInSubjectState extends Equatable {
  const AllQuizInSubjectState();
  
  @override
  List<Object> get props => [];
}

final class AllQuizInSubjectInitial extends AllQuizInSubjectState {}
// ignore: must_be_immutable
class SuccessGetQuiz extends AllQuizInSubjectState {
  List<AllQuizInSubjectModel> quizinsubject;
  SuccessGetQuiz({
    required this.quizinsubject,
  });
  @override
  List<Object> get props => [quizinsubject];
}

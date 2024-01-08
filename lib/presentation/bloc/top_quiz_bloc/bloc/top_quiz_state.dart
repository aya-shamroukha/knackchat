// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'top_quiz_bloc.dart';

sealed class TopQuizState extends Equatable {
  const TopQuizState();
  
  @override
  List<Object> get props => [];
}

final class TopQuizInitial extends TopQuizState {}
class LoadingState extends TopQuizState{}
// ignore: must_be_immutable
class SuccessState extends TopQuizState {

  List<TopQuizModel> topquiz;
    @override
  List<Object> get props => [topquiz];
  SuccessState({
    required this.topquiz,
  });
}
class ErrorState extends TopQuizState{} 
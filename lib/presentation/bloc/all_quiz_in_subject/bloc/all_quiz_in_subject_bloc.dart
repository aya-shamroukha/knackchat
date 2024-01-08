import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'all_quiz_in_subject_event.dart';
part 'all_quiz_in_subject_state.dart';

class AllQuizInSubjectBloc extends Bloc<AllQuizInSubjectEvent, AllQuizInSubjectState> {
  AllQuizInSubjectBloc() : super(AllQuizInSubjectInitial()) {
    on<AllQuizInSubjectEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

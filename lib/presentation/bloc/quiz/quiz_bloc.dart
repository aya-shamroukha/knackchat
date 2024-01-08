import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  QuizBloc() : super(QuizInitial()) {
    on<Ans>((event, emit) {
      emit(LoadingQuiz());
      if (event.is_correct) {
        emit(Correct(
            // Here i can add the request to back to add points
            ));
      } else if (event.is_correct == false) {
        emit(Incorrect());
      } else {
        emit(EndTime());
      }
    });
  }
}

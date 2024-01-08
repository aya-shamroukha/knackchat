import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:uik/data/service/quiz_service.dart';
import 'package:uik/domain/models/quiz_model/topquiz.dart';

part 'top_quiz_event.dart';
part 'top_quiz_state.dart';

class TopQuizBloc extends Bloc<TopQuizEvent, TopQuizState> {
  final QuizImpl quizimpl;
  TopQuizBloc(this.quizimpl) : super(TopQuizInitial()) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(LoadingState());
    on<GetTopQuiz>((event, emit)async {
      var topquiz= await quizimpl.topQuiz();
      List<TopQuizModel> topquzdata=List.generate(topquiz['data'].length, (index) => TopQuizModel.fromMap(topquiz['data'][index]));
      emit(SuccessState(topquiz:topquzdata ));
    });
  }
}

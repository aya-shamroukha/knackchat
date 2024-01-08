import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/model/old_model/is_correct.dart';
import '../../../domain/model/old_model/quiz.dart';

part 'get_quiz_event.dart';
part 'get_quiz_state.dart';

class GetQuizBloc extends Bloc<GetQuizEvent, GetQuizState> {
  GetQuizBloc() : super(GetQuizInitial()) {
    on<GetQuizEvent>((event, emit) {
      emit(
        SuccessGetQuiz(
          question: [
            QuizModel(
                duration: Duration(seconds: 3),
                question: "😁😁😁😁😁😁",
                answers: [
                  AnswersModel(
                    iscorrect: true,
                    answer_text: "1",
                  ),
                  AnswersModel(iscorrect: false, answer_text: "2"),
                  AnswersModel(iscorrect: false, answer_text: "3"),
                  AnswersModel(iscorrect: false, answer_text: "4"),
                ]),
            //        QuizModel(
            // duration: Duration(seconds: 3),
            // question: "😁",
            // answers: [
            //   AnswersModel(
            //     iscorrect: true,
            //     answer_text: "5",
            //   ),
            //   AnswersModel(iscorrect: false, answer_text: "6"),
            //   AnswersModel(iscorrect: true, answer_text: "7"),
            //   AnswersModel(iscorrect: false, answer_text: "8"),
            // ])
          ],
        ),
      );
    });
  }
}

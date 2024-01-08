import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uik/data/service/quiz_service.dart';
import 'package:uik/domain/models/quiz_model/all_quiz_in_subject.dart';

part 'all_quiz_in_subject_event.dart';
part 'all_quiz_in_subject_state.dart';

class AllQuizInSubjectBloc extends Bloc<AllQuizInSubjectEvent, AllQuizInSubjectState> {
  AllQuizInSubjectBloc() : super(AllQuizInSubjectInitial()) {
    on<GetAllQuiz>((event, emit)async {
      var quiz= await QuizImpl().allQuizInSubject(event.id);
      List<AllQuizInSubjectModel> quizdata=List.generate(quiz['data'].length,
       (index) => AllQuizInSubjectModel.fromMap(quiz['data'][index]));
      emit(SuccessGetQuiz(quizinsubject: quizdata));
    });
  }
}

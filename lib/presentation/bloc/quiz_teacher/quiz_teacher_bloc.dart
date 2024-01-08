import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uik/data/service/quiz_service.dart';
import 'package:uik/domain/models/quiz_model/all_teacher_quizzes.dart';

part 'quiz_teacher_event.dart';
part 'quiz_teacher_state.dart';

class QuizTeacherBloc extends Bloc<QuizTeacherEvent, QuizTeacherState> {
  QuizTeacherBloc() : super(QuizTeacherInitial()) {
    on<GetQuizTeacher>((event, emit) async{
      var getquiz=await QuizImpl().indexAllTeacherQuizzes(event.id);
         
            List<QuizTeacher> getquizdata=List.generate(getquiz['data'].length, (index) => QuizTeacher.fromMap(getquiz['data'][index]));
           emit(SuccessQuizTeacher(quizmodel: getquizdata));


    });
  }
}

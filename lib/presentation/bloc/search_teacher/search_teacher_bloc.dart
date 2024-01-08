// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:uik/data/service/teacher_services.dart';
import 'package:uik/domain/models/teacher_model/search_for_teacher.dart';
part 'search_teacher_event.dart';
part 'search_teacher_state.dart';

class SearchTeacherBloc extends Bloc<SearchTeacherEvent, SearchTeacherState> {

  TeacherServices teacherServices;
  SearchTeacherBloc(
    this.teacherServices,
  ) : super(SearchTeacherInitial()) {
    on<SearchEvent>((event, emit) async{
        var search= await teacherServices.searchTeacher(event.search);
      List<SearchTeacherModel> searchdata=List.generate(
        search['data'].length, (index) => SearchTeacherModel.fromMap((search['data'][index])));
      emit(SuccessSearch(searchteacher:searchdata ));
         var notsearch= await teacherServices.searchTeacher(event.search);
      List<SearchTeacherModel> notsearchdata=List.generate(
        notsearch['data'].length, (index) => SearchTeacherModel.fromMap((notsearch['data'][index])));
      if(notsearchdata.isEmpty){
         emit(NotFoundState(
       const Center(
         child: Text('No results found :('),
       )

      ));
      }
    });
    
   
    
  }
}

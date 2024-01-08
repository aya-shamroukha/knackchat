part of 'search_teacher_bloc.dart';

sealed class SearchTeacherEvent extends Equatable {
  const SearchTeacherEvent();

 
}
class SearchEvent extends SearchTeacherEvent{
  final String search;

  SearchEvent(this.search);
   @override
  List<Object> get props => [search];
}
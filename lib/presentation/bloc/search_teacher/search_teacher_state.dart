// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_teacher_bloc.dart';

 class SearchTeacherState extends Equatable {
  const SearchTeacherState();
  
  @override
  List<Object> get props => [];
}

 class SearchTeacherInitial extends SearchTeacherState {}
// ignore: must_be_immutable
class SuccessSearch extends SearchTeacherState {

  List<SearchTeacherModel> searchteacher;
  SuccessSearch({
    required this.searchteacher,
  });
  @override
  List<Object> get props => [searchteacher];
}
class NoInternetState extends SearchTeacherState{

}
class NotFoundState extends SearchTeacherState{
 final dynamic notfound;

  NotFoundState(this.notfound);
}

// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors_in_immutables
part of 'showteacher_bloc.dart';

sealed class ShowteacherEvent extends Equatable {
  const ShowteacherEvent();

  @override
  List<Object> get props => [];
}
class GetShowTeacher extends ShowteacherEvent {
 final dynamic id;
  GetShowTeacher({
    required this.id,
  });
  @override
  List<Object> get props => [id];
  
}

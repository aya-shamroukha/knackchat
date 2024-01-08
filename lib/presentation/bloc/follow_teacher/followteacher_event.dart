// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors_in_immutables
part of 'followteacher_bloc.dart';

sealed class FollowteacherEvent extends Equatable {
  const FollowteacherEvent();

  @override
  List<Object> get props => [];
}
class FollowTeachersEvent extends FollowteacherEvent {
 final int id;
  FollowTeachersEvent({
    required this.id,
  });
  @override
  List<Object> get props => [id,];
}


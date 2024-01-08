// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, prefer_const_constructors_in_immutables
part of 'followteacher_bloc.dart';

sealed class FollowteacherState extends Equatable {
  const FollowteacherState();
  
  @override
  List<Object> get props => [];
}

 class FollowteacherInitial extends FollowteacherState {}

 class LoadingSeate extends FollowteacherState{}
class FollowSuccess extends FollowteacherState {
 final bool isFollow;
  FollowSuccess({
    required this.isFollow,
  });
   @override
  List<Object> get props => [isFollow];
}
class ErrorFollowState extends FollowteacherState{}

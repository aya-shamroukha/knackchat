part of 'get_my_profile_bloc.dart';

sealed class GetMyProfileState extends Equatable {
  const GetMyProfileState();
  
  @override
  List<Object> get props => [];
}

final class GetMyProfileInitial extends GetMyProfileState {}
class SuccessGetMyProfileState extends GetMyProfileState{
final GetMyProfileModel profileModel;

  SuccessGetMyProfileState({required this.profileModel});

 
    @override
  List<Object> get props => [profileModel];

}
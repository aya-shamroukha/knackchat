part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}
class LoginSuccess extends LoginEvent{
  final LoginRequsetModel login;

  LoginSuccess({required this.login});
  @override
  List<Object> get props => [login];
} 
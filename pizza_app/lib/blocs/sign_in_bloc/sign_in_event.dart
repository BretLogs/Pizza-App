part of 'sign_in_bloc.dart';

sealed class SignInEvent {
  // const SignInEvent();

  // @override
  // List<Object> get props => <Object>[];
}

class SignInRequired extends SignInEvent {
  SignInRequired(this.email, this.password);

  final String email;
  final String password;

  @override
  List<Object> get props => <Object>[email, password];
}

class SignOutRequired extends SignInEvent {}

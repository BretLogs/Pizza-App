part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {
  // const AuthenticationEvent();

  // @override
  // List<Object> get props => <Object>[];
}

class AuthenticationUserChanged extends AuthenticationEvent {
  AuthenticationUserChanged(this.user);

  final MyUser? user;
}

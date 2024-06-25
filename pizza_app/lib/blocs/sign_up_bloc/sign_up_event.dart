part of 'sign_up_bloc.dart';

@immutable
sealed class SignUpEvent {}

class SignUpRequired extends SignUpEvent {
  SignUpRequired(this.user, this.password);

  final MyUser user;
  final String password;

  @override
  List<Object> get props => <Object>[user, password];
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:user_repository/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.userRepository,
  }) : super(const AuthenticationState.unknown()) {
    _userSubscription = userRepository.user.listen((MyUser? user) {
      add(AuthenticationUserChanged(user));
    });
    on<AuthenticationUserChanged>((AuthenticationUserChanged event, Emitter<AuthenticationState> emit) {
      if (event.user != MyUser.empty) {
        emit(AuthenticationState.authenticated(event.user!));
      } else {
        emit(const AuthenticationState.unauthenticated());
      }
    });
  }
  final UserRepository userRepository;
  late final StreamSubscription<MyUser?> _userSubscription;
  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}

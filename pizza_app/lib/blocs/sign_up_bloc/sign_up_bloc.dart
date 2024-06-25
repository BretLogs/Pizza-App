import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:user_repository/user_repository.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this._userRepository) : super(SignUpInitial()) {
    on<SignUpRequired>((SignUpRequired event, Emitter<SignUpState> emit) async {
      emit(SignUpProcess());
      try {
        MyUser myUser = await _userRepository.signUp(event.user, event.password);
        await _userRepository.setUserData(myUser);

        emit(SignUpSuccess());
      } catch (e) {
        emit(SignUpFailure());
      }
    });
  }
  final UserRepository _userRepository;
}

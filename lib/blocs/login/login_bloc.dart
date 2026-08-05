import 'package:bloc/bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc():super(LoginInitial()){
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(LoginSubmitted event, Emitter<LoginState> emit,) async{
    if(event.username.isEmpty || event.password.isEmpty){
      emit(LoginValidationFailure(
        usernameError: event.username.isEmpty ? 'Tên đằng nhập không được để trống' : null,
        passwordError: event.password.isEmpty ? 'Mật khẩu không được để trống' : null
      ));
      return;
    }
    emit(LoginLoading());

  }
}
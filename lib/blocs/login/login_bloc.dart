import 'package:bloc/bloc.dart';
import '../../domain/use_cases/login_user.dart';
import 'login_event.dart';
import 'login_state.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState>{
  final LoginUserUseCase loginUserUseCase;
  LoginBloc(this.loginUserUseCase):super(LoginInitial()){
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(LoginSubmitted event, Emitter<LoginState> emit,) async{
    print("Username: ${event.username}");
    print("Password: ${event.password}");
    if(event.username.isEmpty || event.password.isEmpty){
      emit(LoginValidationFailure(
        usernameError: event.username.isEmpty ? 'Tên đằng nhập không được để trống' : null,
        passwordError: event.password.isEmpty ? 'Mật khẩu không được để trống' : null
      ));
      return;
    }
    emit(LoginLoading());
    try {
      //  Gọi UseCase
      final result = await loginUserUseCase(
        username: event.username,
        password: event.password,
      );

      // Xử lý kết quả
      if (result.status == 1) {
        emit(LoginSuccess());
      } else {
        emit(
          LoginAuthenticationFailure(
            'Tên đăng nhập hoặc mật khẩu không đúng',
          ),
        );
      }
    } catch (e) {
      emit(
        LoginAuthenticationFailure(
          e.toString().replaceFirst('Exception: ', ''),
        ),
      );
    }
  }
}
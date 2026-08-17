import 'package:bloc/bloc.dart';
import '../../domain/use_cases/register_user.dart';
import 'signup_event.dart';
import 'signup_state.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final RegisterUseCase registerUseCase;

  SignupBloc(this.registerUseCase) : super(SignupInitial()) {
    on<SignupSubmitted>(_onSignupSubmitted);
  }

  Future<void> _onSignupSubmitted(
      SignupSubmitted event,
      Emitter<SignupState> emit,
      ) async {
    print("fullname: ${event.fullname}");
    print("staffcode: ${event.staffcode}");
    print("accountname: ${event.accountname}");
    print("password: ${event.password}");

    // Validation
    if (event.fullname.isEmpty ||
        event.staffcode.isEmpty ||
        event.accountname.isEmpty ||
        event.password.length < 6 ||
        event.staffcode == event.accountname) {
      emit(
        SignupValidationFailure(
          fullnameError: event.fullname.isEmpty
              ? 'Vui lòng nhập tên đầy đủ'
              : null,

          staffcodeError: event.staffcode.isEmpty
              ? 'Vui lòng nhập mã nhân viên'
              : event.staffcode == event.accountname
              ? 'Mã nhân viên không được trùng tên tài khoản'
              : null,

          accountnameError: event.accountname.isEmpty
              ? 'Vui lòng nhập tên tài khoản'
              : null,

          passwordError: event.password.isEmpty
              ? 'Vui lòng nhập mật khẩu'
              : event.password.length < 6
              ? 'Mật khẩu phải có tối thiểu 6 ký tự'
              : null,
        ),
      );

      return;
    }

    emit(SignupLoading());

    try {
      final result = await registerUseCase(
        username: event.accountname,
        password: event.password,
        fullname: event.fullname,
        employeeCode: event.staffcode,
      );

      if (result.status == 1) {
        emit(SignupSuccess());
      } else {
        emit(
          SignupValidationFailure(
            accountnameError: result.message.contains('tên đăng nhập')
                ? 'Tên đăng nhập đã tồn tại'
                : null,
            staffcodeError: result.message.contains('mã nhân viên')
                ? 'Mã nhân viên đã tồn tại, vui lòng kiểm tra lại!'
                : null,
          ),
        );
      }
    } catch (e) {
      final message = e.toString().replaceFirst('Exception: ', '');

      if (message.contains('Tên đăng nhập đã tồn tại')) {
        emit(
          SignupValidationFailure(
            accountnameError: 'Tên đăng nhập đã tồn tại',
          ),
        );
      } else if (message.contains('Mã nhân viên đã tồn tại, vui lòng kiểm tra lại!')) {
        emit(
          SignupValidationFailure(
            staffcodeError: 'Mã nhân viên đã tồn tại, vui lòng kiểm tra lại!',
          ),
        );
      } else {
        emit(
          SignupValidationFailure(
            accountnameError: message,
          ),
        );
      }
    }
  }
}
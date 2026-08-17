import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:projects_for_mobile/blocs/password/change_password/change_password_event.dart';
import 'package:projects_for_mobile/blocs/password/change_password/change_password_state.dart';

import '../../../domain/use_cases/reset_password.dart';

@Injectable()
class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ResetPasswordUseCase resetPasswordUseCase;
  ChangePasswordBloc(
      this.resetPasswordUseCase,
      ) : super(ChangePasswordInitial()) {
    on<ChangePassword>(_onChangePassword);
  }

  Future<void> _onChangePassword(ChangePassword event, Emitter<ChangePasswordState> emit)async{
    bool checkNewPass = event.newPassword.isEmpty;
    bool checkConfirmPass = event.confirmPassword.isEmpty;
    bool checkMatch = (event.newPassword != event.confirmPassword);
    bool checkMinLength = event.newPassword.length < 6;
    print("new pass: ${event.newPassword}");
    print("confirm pass: ${event.confirmPassword}");
    if(checkNewPass || checkConfirmPass || checkMatch){
      emit(ChangePasswordValidationFailure(
          newPassError: checkNewPass ? 'Mật khẩu mới không được để trống' : (checkMinLength ? 'Mật khẩu phải có ít nhất 6 ký tự' : null),
          confirmPassError: checkConfirmPass ? 'Xác nhận mật khẩu mới không được để trống' : null,
          matchError: checkMatch ? 'Mật khẩu mới và xác nhận mật khẩu không giống nhau' : null,
      ));
      return;
    }
    emit(ChangePasswordLoading());
    try {
      await resetPasswordUseCase(
        username: event.username,
        employeeCode: event.employeeCode,
        newPassword: event.newPassword,
      );

      emit(ChangePasswordSuccess());
    } catch (e) {
      emit(
        ChangePasswordFailure(
          e.toString(),
        ),
      );
    }
  }
}

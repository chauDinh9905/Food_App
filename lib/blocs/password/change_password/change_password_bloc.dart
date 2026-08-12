import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:projects_for_mobile/blocs/password/change_password/change_password_event.dart';
import 'package:projects_for_mobile/blocs/password/change_password/change_password_state.dart';

@Injectable()
class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc():super(ChangePasswordInitial()){
    on<ChangePassword>(_onChangePassword);
  }

  Future<void> _onChangePassword(ChangePassword event, Emitter<ChangePasswordState> emit)async{
    bool checkNewPass = event.newPassword.isEmpty;
    bool checkConfirmPass = event.confirmPassword.isEmpty;
    bool checkMatch = (event.newPassword != event.confirmPassword);
    print("new pass: ${event.newPassword}");
    print("confirm pass: ${event.confirmPassword}");
    if(checkNewPass || checkConfirmPass || checkMatch){
      emit(ChangePasswordValidationFailure(
          newPassError: checkConfirmPass ? 'Mật khẩu mới không được để trống' : null,
          confirmPassError: checkConfirmPass ? 'Xác nhận mật khẩu mới không được để trống' : null,
          matchError: checkMatch ? 'Mật khẩu mới và xác nhận mật khẩu không giống nhau' : null,
      ));
      return;
    }
    emit(ChangePasswordLoading());
    emit(ChangePasswordSuccess());
  }
}

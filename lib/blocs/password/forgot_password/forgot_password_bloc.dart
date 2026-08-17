import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:projects_for_mobile/blocs/password/forgot_password/forgot_password_event.dart';
import 'package:projects_for_mobile/blocs/password/forgot_password/forgot_password_state.dart';

import '../../../domain/use_cases/verify_forgot_password.dart';

@Injectable()
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {

  final VerifyForgotPasswordUseCase verifyForgotPasswordUseCase;

  ForgotPasswordBloc(
      this.verifyForgotPasswordUseCase,
      ) : super(ForgotPasswordInitial()) {
    on<Confirm>(_onConfirm);
  }

  Future<void> _onConfirm(
      Confirm event,
      Emitter<ForgotPasswordState> emit,
      ) async {
    bool checkAccountName = event.accountname.isEmpty;
    bool checkStaffCode = event.staffcode.isEmpty;

    print("accountname: ${event.accountname}");
    print("staffcode: ${event.staffcode}");

    if (checkAccountName || checkStaffCode) {
      emit(
        ForgotPasswordValidationFailure(
          accountnameError: checkAccountName
              ? 'Tên đăng nhập không được để trống'
              : null,
          staffcodeError: checkStaffCode
              ? 'Mã nhân viên không được để trống'
              : null,
        ),
      );
      return;
    }

    emit(ForgotPasswordLoading());

    try {
      final fullname = await verifyForgotPasswordUseCase(
        username: event.accountname,
        employeeCode: event.staffcode,
      );

      emit(
        ForgotPasswordSuccess(
          username: event.accountname,
          employeeCode: event.staffcode,
          fullname: fullname,
        ),
      );
    } catch (e) {
      emit(
        ForgotPasswordAuthenticationFailure(
          "Thông tin xác minh không đúng",
        ),
      );
    }
  }
}
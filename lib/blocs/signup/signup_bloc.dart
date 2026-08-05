import 'package:bloc/bloc.dart';
import 'signup_event.dart';
import 'signup_state.dart';
class SignupBloc extends Bloc<SignupEvent, SignupState>{
  SignupBloc():super(SignupInitial()){
    on<SignupSubmitted>(_onSignupSubmitted);
  }
  Future<void> _onSignupSubmitted(SignupSubmitted event, Emitter<SignupState> emit,) async{
    if(event.fullname.isEmpty || event.staffcode.isEmpty || event.accountname.isEmpty
       || event.password.length < 6 || (event.staffcode == event.accountname)){
      emit(SignupValidationFailure(
        fullnameError: event.fullname.isEmpty ? 'Tên đầy đủ không được để trống' : null,
        staffcodeError: event.staffcode.isEmpty ? 'Mã nhân viên không được để trống' : null,
        accountnameError: event.accountname.isEmpty ? 'Tên tài khoản không được để trống' : null,
        passwordError: event.password.lenght < 6 ? 'Mật khẩu phải có tối thiểu 6 kí tự' : null,
        duplicateError: event.staffcode == event.accountname ? 'Mã nhân viên không được trùng tên tài khoản' : null
      ));
      return;
    }
    emit(SignupLoading());
  }
}
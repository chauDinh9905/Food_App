sealed class SignupState{}
final class SignupInitial extends SignupState{}
final class SignupLoading extends SignupState{}
final class SignupSuccess extends SignupState{}
final class SignupValidationFailure extends SignupState{
  final String? fullnameError;
  final String? staffcodeError;
  final String? accountnameError;
  final String? passwordError;

  SignupValidationFailure({
     this.fullnameError,
     this.staffcodeError,
     this.accountnameError,
     this.passwordError,
  });
}
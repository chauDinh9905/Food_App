sealed class ForgotPasswordState {}
final class ForgotPasswordInitial extends ForgotPasswordState{}
final class ForgotPasswordLoading extends ForgotPasswordState{}
final class ForgotPasswordSuccess extends ForgotPasswordState {
  final String username;
  final String fullname;

  ForgotPasswordSuccess({
    required this.username,
    required this.fullname,
  });
}
final class ForgotPasswordValidationFailure extends ForgotPasswordState{
  final String? accountnameError;
  final String? staffcodeError;

  ForgotPasswordValidationFailure({
    required this.accountnameError,
    required this.staffcodeError,
    });
}

final class ForgotPasswordAuthenticationFailure extends ForgotPasswordState{
  final String message;
  ForgotPasswordAuthenticationFailure(this.message);
}
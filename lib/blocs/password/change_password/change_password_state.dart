sealed class ChangePasswordState {}
final class ChangePasswordInitial extends ChangePasswordState{}
final class ChangePasswordLoading extends ChangePasswordState{}
final class ChangePasswordSuccess extends ChangePasswordState{}
final class ChangePasswordValidationFailure extends ChangePasswordState{
  final String? newPassError;
  final String? confirmPassError;
  final String? matchError;

  ChangePasswordValidationFailure({
    required this.newPassError,
    required this.confirmPassError,
    required this.matchError,
  });
}

final class ChangePasswordFailure extends ChangePasswordState{
  final String message;
  ChangePasswordFailure(this.message);
}
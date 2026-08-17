sealed class ChangePasswordEvent {}

final class ChangePassword extends ChangePasswordEvent {
  final String username;
  final String employeeCode;
  final String newPassword;
  final String confirmPassword;

  ChangePassword({
    required this.username,
    required this.employeeCode,
    required this.newPassword,
    required this.confirmPassword,
  });
}
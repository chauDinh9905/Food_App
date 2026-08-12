sealed class ChangePasswordEvent {}

final class ChangePassword extends ChangePasswordEvent{
  final String newPassword;
  final String confirmPassword;

  ChangePassword({
    required this.newPassword,
    required this.confirmPassword,
  });
}
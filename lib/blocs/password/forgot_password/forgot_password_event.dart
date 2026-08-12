sealed class ForgotPasswordEvent {}

final class Confirm extends ForgotPasswordEvent{
  final String accountname;
  final String staffcode;

  Confirm({
     required this.accountname,
    required this.staffcode,
  });
}
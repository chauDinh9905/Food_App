import '../entities/account.dart';
abstract interface class RegisterRepository{
  Future<Account> signup({
    required String fullname,
    required String staffcode,
    required String accountname,
    required String password,
  });
}
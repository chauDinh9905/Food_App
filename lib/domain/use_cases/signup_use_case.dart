import '../entities/account.dart';
import '../repositories/register_repository.dart';

class SignupUseCase{
  final RegisterRepository repository;
  SignupUseCase(this.repository);
  Future<Account> call({
    required String fullname,
    required String staffcode,
    required String accountname,
    required String password,
  }){
    return repository.signup(fullname: fullname, staffcode: staffcode, accountname: accountname, password: password);
  }
}
import 'package:injectable/injectable.dart';

import '../entities/signup/register_result.dart';
import '../repositories/user_repository.dart';

@Injectable()
class RegisterUseCase {
  final UserRepository repository;

  RegisterUseCase(this.repository);

  Future<RegisterResult> call({
    required String username,
    required String password,
    required String fullname,
    required String employeeCode,
  }) {
    return repository.register(
      username: username,
      password: password,
      fullname: fullname,
      employeeCode: employeeCode,
    );
  }
}
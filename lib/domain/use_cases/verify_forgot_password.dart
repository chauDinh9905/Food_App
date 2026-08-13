import 'package:injectable/injectable.dart';

import '../repositories/user_repository.dart';

@Injectable()
class VerifyForgotPasswordUseCase {
  final UserRepository repository;

  VerifyForgotPasswordUseCase(this.repository);

  Future<String> call({
    required String username,
    required String employeeCode,
  }) {
    return repository.verifyForgotPassword(
      username: username,
      employeeCode: employeeCode,
    );
  }
}
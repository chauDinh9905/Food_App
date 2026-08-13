import 'package:injectable/injectable.dart';

import '../repositories/user_repository.dart';

@Injectable()
class ResetPasswordUseCase {
  final UserRepository repository;

  ResetPasswordUseCase(this.repository);

  Future<void> call({
    required String username,
    required String employeeCode,
    required String newPassword,
  }) {
    return repository.resetPassword(
      username: username,
      employeeCode: employeeCode,
      newPassword: newPassword,
    );
  }
}
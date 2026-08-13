import 'package:injectable/injectable.dart';
import 'package:projects_for_mobile/domain/entities/login/login_result.dart';

import '../repositories/user_repository.dart';

@Injectable()
class LoginUserUseCase {
  final UserRepository repository;

  LoginUserUseCase(this.repository);

  Future<LoginResult> call({
    required String username,
    required String password,
  }) {
    return repository.login(
      username: username,
      password: password,
    );
  }
}
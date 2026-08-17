import 'package:injectable/injectable.dart';

import '../entities/user.dart';
import '../repositories/user_repository.dart';


@injectable
class GetUserInfoUseCase {
  final UserRepository repository;

  GetUserInfoUseCase(this.repository);

  Future<User> call() {
    return repository.getUserInfo();
  }
}
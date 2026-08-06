import '../entities/user.dart';
import '../repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LoginUseCase{
  final AuthRepository repository;
  LoginUseCase(this.repository);
  Future<User> call({required String username, required String password}){
    return repository.login(username: username, password: password);
  }
}
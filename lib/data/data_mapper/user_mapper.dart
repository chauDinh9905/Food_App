import '../../domain/entities/user.dart';
import '../models/user_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UserMapper extends BaseDataMapper<User, UserModel>{
  @override
  User mapToEntity(UserModel? data){
    return User(
      username: data?.username ?? User.usernameDefault,
      password: data?.password ?? User.passwordDefault
    );
  }
}
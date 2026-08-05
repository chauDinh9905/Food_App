import '../entities/user.dart';

abstract interface class AuthRepository{
  Future<User> login({
   required String username,
   required String password,
  });
}
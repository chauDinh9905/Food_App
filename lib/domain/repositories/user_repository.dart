/*Với Future<T> thì T ở đây sẽ dựa vào body response của server*/

import 'package:projects_for_mobile/domain/entities/signup/register_result.dart';

import '../entities/login/login_result.dart';

abstract class UserRepository {
  Future<RegisterResult> register({
    required String username,
    required String password,
    required String fullname,
    required String employeeCode,
  });

  Future<LoginResult> login({
    required String username,
    required String password,
  });

  Future<String> verifyForgotPassword({
    required String username,
    required String employeeCode,
  });

  Future<void> resetPassword({
    required String username,
    required String employeeCode,
    required String newPassword,
  });
}
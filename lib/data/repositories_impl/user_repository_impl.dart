import 'package:injectable/injectable.dart';
import '../../domain/entities/login/login_result.dart';
import '../../domain/entities/signup/register_result.dart';
import '../../domain/repositories/user_repository.dart';
import '../data_mapper/user/login_response_mapper.dart';
import '../data_mapper/user/register_response_mapper.dart';
import '../data_sources/user_remote_data_source.dart';
import '../models/request/login_request_model.dart';
import '../models/request/register_request_model.dart';
import '../models/request/reset_forgot_password_request_model.dart';
import '../models/request/verify_forgot_password_request_model.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource dataSource;

  UserRepositoryImpl(this.dataSource);

  @override
  Future<RegisterResult> register({
    required String username,
    required String password,
    required String fullname,
    required String employeeCode,
  }) async {
    final request = RegisterRequestModel(
      username: username,
      password: password,
      fullname: fullname,
      employeeCode: employeeCode,
    );

    final response = await dataSource.register(request);

    return response.toEntity();
  }

  @override
  Future<LoginResult> login({
    required String username,
    required String password,
  }) async {
    final request = LoginRequestModel(
      username: username,
      password: password,
    );

    final response = await dataSource.login(request);

    return response.toEntity();
  }

  @override
  Future<String> verifyForgotPassword({
    required String username,
    required String employeeCode,
  }) async {
    final request = VerifyForgotPasswordRequestModel(
      username: username,
      employeeCode: employeeCode,
    );

    final response = await dataSource.verifyForgotPassword(request);

    return response.data.fullname;
  }

  @override
  Future<void> resetPassword({
    required String username,
    required String employeeCode,
    required String newPassword,
  }) async {
    final request = ResetForgotPasswordRequestModel(
      username: username,
      employeeCode: employeeCode,
      newPassword: newPassword,
    );

    await dataSource.resetForgotPassword(request);
  }
}
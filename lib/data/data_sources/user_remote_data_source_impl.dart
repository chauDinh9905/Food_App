import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../constants/api/api_endpoints.dart';
import '../models/request/login_request_model.dart';
import '../models/request/register_request_model.dart';
import '../models/request/reset_forgot_password_request_model.dart';
import '../models/request/verify_forgot_password_request_model.dart';
import '../models/response/get_user_info_response_model.dart';
import '../models/response/login_response_model.dart';
import '../models/response/register_response_model.dart';
import '../models/response/reset_forgot_password_response_model.dart';
import '../models/response/verify_forgot_password_response_model.dart';
import 'user_remote_data_source.dart';

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio _dio;

  UserRemoteDataSourceImpl(this._dio);

  @override
  Future<LoginResponseModel> login(
      LoginRequestModel request,
      ) async {
    final response = await _dio.post(
      ApiEndpoints.login,
      data: request.toJson(),
    );

    return LoginResponseModel.fromJson(response.data);
  }

  @override
  Future<RegisterResponseModel> register(
      RegisterRequestModel request,
      ) async {
    final response = await _dio.post(
      ApiEndpoints.register,
      data: request.toJson(),
    );

    return RegisterResponseModel.fromJson(response.data);
  }

  @override
  Future<GetUserInfoResponseModel> getUserInfo() async {
    final response = await _dio.get(
      ApiEndpoints.getUserInfo,
    );

    return GetUserInfoResponseModel.fromJson(response.data);
  }

  @override
  Future<VerifyForgotPasswordResponseModel> verifyForgotPassword(
      VerifyForgotPasswordRequestModel request,
      ) async {
    final response = await _dio.post(
      ApiEndpoints.verifyForgotPassword,
      data: request.toJson(),
    );

    return VerifyForgotPasswordResponseModel.fromJson(response.data);
  }

  @override
  Future<ResetForgotPasswordResponseModel> resetForgotPassword(
      ResetForgotPasswordRequestModel request,
      ) async {
    final response = await _dio.post(
      ApiEndpoints.resetForgotPassword,
      data: request.toJson(),
    );

    return ResetForgotPasswordResponseModel.fromJson(response.data);
  }
}
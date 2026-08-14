import '../models/request/login_request_model.dart';
import '../models/request/register_request_model.dart';
import '../models/request/reset_forgot_password_request_model.dart';
import '../models/request/verify_forgot_password_request_model.dart';
import '../models/response/get_user_info_response_model.dart';
import '../models/response/login_response_model.dart';
import '../models/response/register_response_model.dart';
import '../models/response/reset_forgot_password_response_model.dart';
import '../models/response/verify_forgot_password_response_model.dart';

abstract class UserRemoteDataSource {
  Future<LoginResponseModel> login(
      LoginRequestModel request,
      );

  Future<RegisterResponseModel> register(
      RegisterRequestModel request,
      );

  Future<GetUserInfoResponseModel> getUserInfo();
  Future<VerifyForgotPasswordResponseModel> verifyForgotPassword(
      VerifyForgotPasswordRequestModel request,
      );

  Future<ResetForgotPasswordResponseModel> resetForgotPassword(
      ResetForgotPasswordRequestModel request,
      );
}

import '../../../domain/entities/login/login_result.dart';
import '../../models/response/login_response_model.dart';

extension LoginResponseModelMapper on LoginResponseModel {
  LoginResult toEntity() {
    return LoginResult(
      status: status,
      message: message,
      role: role,
      token: token,
    );
  }
}
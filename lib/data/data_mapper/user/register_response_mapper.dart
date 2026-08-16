import '../../../domain/entities/signup/register_result.dart';
import '../../models/response/register_response_model.dart';

extension RegisterResponseModelMapper on RegisterResponseModel {
  RegisterResult toEntity() {
    return RegisterResult(
      status: status,
      token: token ?? '',
      message: message,
    );
  }
}
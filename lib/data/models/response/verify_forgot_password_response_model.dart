import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projects_for_mobile/data/models/response/verify_forgot_password_data_model.dart';
part 'verify_forgot_password_response_model.freezed.dart';
part 'verify_forgot_password_response_model.g.dart';
@freezed
abstract class VerifyForgotPasswordResponseModel
    with _$VerifyForgotPasswordResponseModel {
  const factory VerifyForgotPasswordResponseModel({
    @JsonKey(name: 'status')
    required int status,

    @JsonKey(name: 'message')
    required String message,

    @JsonKey(name: 'data')
    required VerifyForgotPasswordDataModel data,
  }) = _VerifyForgotPasswordResponseModel;

  factory VerifyForgotPasswordResponseModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$VerifyForgotPasswordResponseModelFromJson(json);
}
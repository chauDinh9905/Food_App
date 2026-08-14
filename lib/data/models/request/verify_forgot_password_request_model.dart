import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_forgot_password_request_model.freezed.dart';
part 'verify_forgot_password_request_model.g.dart';
@freezed
abstract class VerifyForgotPasswordRequestModel
    with _$VerifyForgotPasswordRequestModel {
  const factory VerifyForgotPasswordRequestModel({
    @JsonKey(name: 'username')
    required String username,

    @JsonKey(name: 'employeeCode')
    required String employeeCode,
  }) = _VerifyForgotPasswordRequestModel;

  factory VerifyForgotPasswordRequestModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$VerifyForgotPasswordRequestModelFromJson(json);
}
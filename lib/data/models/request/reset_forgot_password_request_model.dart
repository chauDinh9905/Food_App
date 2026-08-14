import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_forgot_password_request_model.freezed.dart';
part 'reset_forgot_password_request_model.g.dart';
@freezed
abstract  class ResetForgotPasswordRequestModel
    with _$ResetForgotPasswordRequestModel {
  const factory ResetForgotPasswordRequestModel({
    @JsonKey(name: 'username')
    required String username,

    @JsonKey(name: 'employeeCode')
    required String employeeCode,

    @JsonKey(name: 'newPassword')
    required String newPassword,
  }) = _ResetForgotPasswordRequestModel;

  factory ResetForgotPasswordRequestModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$ResetForgotPasswordRequestModelFromJson(json);
}
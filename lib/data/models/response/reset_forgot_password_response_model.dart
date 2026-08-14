import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_forgot_password_response_model.freezed.dart';
part 'reset_forgot_password_response_model.g.dart';
@freezed
abstract class ResetForgotPasswordResponseModel
    with _$ResetForgotPasswordResponseModel {
  const factory ResetForgotPasswordResponseModel({
    @JsonKey(name: 'status')
    required int status,

    @JsonKey(name: 'message')
    required String message,
  }) = _ResetForgotPasswordResponseModel;

  factory ResetForgotPasswordResponseModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$ResetForgotPasswordResponseModelFromJson(json);
}
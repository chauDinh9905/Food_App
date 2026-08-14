import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_forgot_password_data_model.freezed.dart';
part 'verify_forgot_password_data_model.g.dart';
@freezed
abstract class VerifyForgotPasswordDataModel
    with _$VerifyForgotPasswordDataModel {
  const factory VerifyForgotPasswordDataModel({
    @JsonKey(name: 'fullname')
    required String fullname,
  }) = _VerifyForgotPasswordDataModel;

  factory VerifyForgotPasswordDataModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$VerifyForgotPasswordDataModelFromJson(json);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_forgot_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyForgotPasswordRequestModel _$VerifyForgotPasswordRequestModelFromJson(
  Map<String, dynamic> json,
) => _VerifyForgotPasswordRequestModel(
  username: json['username'] as String,
  employeeCode: json['employeeCode'] as String,
);

Map<String, dynamic> _$VerifyForgotPasswordRequestModelToJson(
  _VerifyForgotPasswordRequestModel instance,
) => <String, dynamic>{
  'username': instance.username,
  'employeeCode': instance.employeeCode,
};

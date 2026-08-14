// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_forgot_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetForgotPasswordRequestModel _$ResetForgotPasswordRequestModelFromJson(
  Map<String, dynamic> json,
) => _ResetForgotPasswordRequestModel(
  username: json['username'] as String,
  employeeCode: json['employeeCode'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$ResetForgotPasswordRequestModelToJson(
  _ResetForgotPasswordRequestModel instance,
) => <String, dynamic>{
  'username': instance.username,
  'employeeCode': instance.employeeCode,
  'newPassword': instance.newPassword,
};

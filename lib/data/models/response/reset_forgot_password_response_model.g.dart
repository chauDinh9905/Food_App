// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_forgot_password_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetForgotPasswordResponseModel _$ResetForgotPasswordResponseModelFromJson(
  Map<String, dynamic> json,
) => _ResetForgotPasswordResponseModel(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
);

Map<String, dynamic> _$ResetForgotPasswordResponseModelToJson(
  _ResetForgotPasswordResponseModel instance,
) => <String, dynamic>{'status': instance.status, 'message': instance.message};

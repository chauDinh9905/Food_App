// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_forgot_password_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyForgotPasswordResponseModel _$VerifyForgotPasswordResponseModelFromJson(
  Map<String, dynamic> json,
) => _VerifyForgotPasswordResponseModel(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
  data: VerifyForgotPasswordDataModel.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$VerifyForgotPasswordResponseModelToJson(
  _VerifyForgotPasswordResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

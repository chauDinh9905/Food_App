// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRequestModel _$RegisterRequestModelFromJson(
  Map<String, dynamic> json,
) => _RegisterRequestModel(
  username: json['username'] as String,
  fullname: json['fullname'] as String,
  password: json['password'] as String,
  employeeCode: json['employeeCode'] as String,
);

Map<String, dynamic> _$RegisterRequestModelToJson(
  _RegisterRequestModel instance,
) => <String, dynamic>{
  'username': instance.username,
  'fullname': instance.fullname,
  'password': instance.password,
  'employeeCode': instance.employeeCode,
};

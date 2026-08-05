// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountModel _$AccountModelFromJson(Map<String, dynamic> json) =>
    _AccountModel(
      fullname: json['fullname'] as String?,
      staffcode: json['staffcode'] as String?,
      accountname: json['accountname'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$AccountModelToJson(_AccountModel instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'staffcode': instance.staffcode,
      'accountname': instance.accountname,
      'password': instance.password,
    };

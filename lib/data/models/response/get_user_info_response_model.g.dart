// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_info_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetUserInfoResponseModel _$GetUserInfoResponseModelFromJson(
  Map<String, dynamic> json,
) => _GetUserInfoResponseModel(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
  data: UserModel.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetUserInfoResponseModelToJson(
  _GetUserInfoResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

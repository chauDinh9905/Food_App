// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CancelOrderResponseModel _$CancelOrderResponseModelFromJson(
  Map<String, dynamic> json,
) => _CancelOrderResponseModel(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
);

Map<String, dynamic> _$CancelOrderResponseModelToJson(
  _CancelOrderResponseModel instance,
) => <String, dynamic>{'status': instance.status, 'message': instance.message};

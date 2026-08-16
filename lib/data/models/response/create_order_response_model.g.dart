// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderResponseModel _$CreateOrderResponseModelFromJson(
  Map<String, dynamic> json,
) => _CreateOrderResponseModel(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
  orderId: (json['orderId'] as num).toInt(),
);

Map<String, dynamic> _$CreateOrderResponseModelToJson(
  _CreateOrderResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'orderId': instance.orderId,
};

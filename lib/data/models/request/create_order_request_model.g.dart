// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderRequestModel _$CreateOrderRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateOrderRequestModel(
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$CreateOrderRequestModelToJson(
  _CreateOrderRequestModel instance,
) => <String, dynamic>{'quantity': instance.quantity};

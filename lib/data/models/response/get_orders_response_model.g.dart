// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetOrdersResponseModel _$GetOrdersResponseModelFromJson(
  Map<String, dynamic> json,
) => _GetOrdersResponseModel(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: OrderPaginationModel.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GetOrdersResponseModelToJson(
  _GetOrdersResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'pagination': instance.pagination,
};

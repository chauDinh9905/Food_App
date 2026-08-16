// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders_by_month_year_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetOrdersByMonthYearResponseModel _$GetOrdersByMonthYearResponseModelFromJson(
  Map<String, dynamic> json,
) => _GetOrdersByMonthYearResponseModel(
  status: (json['status'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetOrdersByMonthYearResponseModelToJson(
  _GetOrdersByMonthYearResponseModel instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

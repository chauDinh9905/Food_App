// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders_by_month_year_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetOrdersByMonthYearRequestModel _$GetOrdersByMonthYearRequestModelFromJson(
  Map<String, dynamic> json,
) => _GetOrdersByMonthYearRequestModel(
  month: (json['month'] as num).toInt(),
  year: (json['year'] as num).toInt(),
);

Map<String, dynamic> _$GetOrdersByMonthYearRequestModelToJson(
  _GetOrdersByMonthYearRequestModel instance,
) => <String, dynamic>{'month': instance.month, 'year': instance.year};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderPaginationModel _$OrderPaginationModelFromJson(
  Map<String, dynamic> json,
) => _OrderPaginationModel(
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  total: (json['total'] as num).toInt(),
  hasMore: json['hasMore'] as bool,
);

Map<String, dynamic> _$OrderPaginationModelToJson(
  _OrderPaginationModel instance,
) => <String, dynamic>{
  'page': instance.page,
  'limit': instance.limit,
  'total': instance.total,
  'hasMore': instance.hasMore,
};

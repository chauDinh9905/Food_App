// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_food_items_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetFoodItemsResponseModel _$GetFoodItemsResponseModelFromJson(
  Map<String, dynamic> json,
) => _GetFoodItemsResponseModel(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => FoodItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetFoodItemsResponseModelToJson(
  _GetFoodItemsResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

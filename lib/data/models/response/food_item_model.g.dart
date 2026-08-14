// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodItemModel _$FoodItemModelFromJson(Map<String, dynamic> json) =>
    _FoodItemModel(
      id: (json['id'] as num).toInt(),
      nameFood: json['name_food'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toInt(),
      image: json['image'] as String?,
      availableDate: json['available_date'] as String,
      isOrdered: (json['is_ordered'] as num).toInt(),
    );

Map<String, dynamic> _$FoodItemModelToJson(_FoodItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_food': instance.nameFood,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
      'available_date': instance.availableDate,
      'is_ordered': instance.isOrdered,
    };

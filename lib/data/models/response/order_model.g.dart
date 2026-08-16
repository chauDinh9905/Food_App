// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: (json['id'] as num).toInt(),
  foodId: (json['food_id'] as num).toInt(),
  nameFood: json['name_food'] as String?,
  quantity: (json['quantity'] as num).toInt(),
  orderDate: json['order_date'] == null
      ? null
      : DateTime.parse(json['order_date'] as String),
  status: json['status'] as String,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  availableDate: json['available_date'] == null
      ? null
      : DateTime.parse(json['available_date'] as String),
  price: (json['price'] as num?)?.toInt(),
  imageUrl: json['image_url'] as String?,
  totalPrice: (json['total_price'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'food_id': instance.foodId,
      'name_food': instance.nameFood,
      'quantity': instance.quantity,
      'order_date': instance.orderDate?.toIso8601String(),
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'available_date': instance.availableDate?.toIso8601String(),
      'price': instance.price,
      'image_url': instance.imageUrl,
      'total_price': instance.totalPrice,
    };

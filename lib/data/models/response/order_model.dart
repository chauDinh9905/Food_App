import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
abstract class OrderModel with _$OrderModel {
  const factory OrderModel({
    required int id,

    @JsonKey(name: 'food_id')
    required int foodId,

    @JsonKey(name: 'name_food')
    String? nameFood,

    required int quantity,

    @JsonKey(name: 'order_date')
    DateTime? orderDate,

    required String status,

    @JsonKey(name: 'created_at')
    DateTime? createdAt,

    @JsonKey(name: 'available_date')
    DateTime? availableDate,

    int? price,

    @JsonKey(name: 'image_url')
    String? imageUrl,

    @JsonKey(name: 'total_price')
    int? totalPrice,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
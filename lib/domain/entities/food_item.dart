import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_item.freezed.dart';

@freezed
abstract class FoodItem with _$FoodItem {
  const factory FoodItem({
    required int id,
    required String name,
    String? description,
    required int price,
    String? imageUrl,
    required DateTime availableDate,
    required bool isOrdered,
  }) = _FoodItem;
}
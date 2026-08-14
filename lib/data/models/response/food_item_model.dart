import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_item_model.freezed.dart';
part 'food_item_model.g.dart';

@freezed
abstract class FoodItemModel with _$FoodItemModel {
  const factory FoodItemModel({
    @JsonKey(name: 'id')
    required int id,

    @JsonKey(name: 'name_food')
    required String nameFood,

    @JsonKey(name: 'description')
    String? description,

    @JsonKey(name: 'price')
    required int price,

    @JsonKey(name: 'image')
    String? image,

    @JsonKey(name: 'available_date')
    required String availableDate,

    @JsonKey(name: 'is_ordered')
    required int isOrdered,
  }) = _FoodItemModel;

  factory FoodItemModel.fromJson(
      Map<String, dynamic> json,
      ) => _$FoodItemModelFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';

import 'food_item_model.dart';

part 'get_food_items_response_model.freezed.dart';
part 'get_food_items_response_model.g.dart';

@freezed
abstract class GetFoodItemsResponseModel
    with _$GetFoodItemsResponseModel {
  const factory GetFoodItemsResponseModel({
    @JsonKey(name: 'status')
    required int status,

    @JsonKey(name: 'message')
    required String message,

    @JsonKey(name: 'data')
    required List<FoodItemModel> data,
  }) = _GetFoodItemsResponseModel;

  factory GetFoodItemsResponseModel.fromJson(
      Map<String, dynamic> json,
      ) => _$GetFoodItemsResponseModelFromJson(json);
}
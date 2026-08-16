import '../../../domain/entities/food_item.dart';
import '../../models/response/get_food_items_response_model.dart';
import 'food_item_mapper.dart';

extension GetFoodItemsResponseModelMapper
on GetFoodItemsResponseModel {
  List<FoodItem> toEntities() {
    return data
        .map((item) => item.toEntity())
        .toList();
  }
}
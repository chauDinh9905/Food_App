import '../../../domain/entities/food_item.dart';
import '../../models/response/food_item_model.dart';

extension FoodItemModelMapper on FoodItemModel {
  FoodItem toEntity() {
    return FoodItem(
      id: id,
      name: nameFood,
      description: description,
      price: price,
      imageUrl: imageUrl,
      availableDate: DateTime.parse(availableDate),
      isOrdered: isOrdered == 1,
    );
  }
}
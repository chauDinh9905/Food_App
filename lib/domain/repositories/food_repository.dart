import '../entities/food_item.dart';

abstract class FoodRepository {
  Future<List<FoodItem>> getFoodItemsOnThisWeek({
    String? name,
  });
}
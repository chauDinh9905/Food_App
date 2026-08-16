import '../models/response/get_food_items_response_model.dart';

abstract class FoodItemRemoteDataSource {
  Future<GetFoodItemsResponseModel> getFoodItemsOnThisWeek({
    String? name,
  });
}

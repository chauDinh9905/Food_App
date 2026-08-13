import 'package:injectable/injectable.dart';

import '../entities/food_item.dart';
import '../repositories/food_repository.dart';

@Injectable()
class GetFoodItemsOnThisWeekUseCase {
  final FoodRepository repository;

  GetFoodItemsOnThisWeekUseCase(this.repository);

  Future<List<FoodItem>> call({
    String? name,
  }) {
    return repository.getFoodItemsOnThisWeek(
      name: name,
    );
  }
}
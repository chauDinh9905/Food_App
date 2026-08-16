import 'package:injectable/injectable.dart';

import '../../domain/entities/food_item.dart';
import '../../domain/repositories/food_repository.dart';
import '../data_mapper/food_item/get_food_items_response_mapper.dart';
import '../data_sources/food_item_remote_data_source.dart';


@Injectable(as: FoodRepository)
class FoodRepositoryImpl implements FoodRepository {
  final FoodItemRemoteDataSource dataSource;

  FoodRepositoryImpl(this.dataSource);

  @override
  Future<List<FoodItem>> getFoodItemsOnThisWeek({
    String? name,
  }) async {
    final response = await dataSource.getFoodItemsOnThisWeek(
      name: name,
    );

    return response.toEntities();
  }
}
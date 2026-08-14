import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../constants/api/api_endpoints.dart';
import '../models/response/get_food_items_response_model.dart';

abstract class FoodItemRemoteDataSource {
  Future<GetFoodItemsResponseModel> getFoodItemsOnThisWeek({
    String? name,
  });
}

@LazySingleton(as: FoodItemRemoteDataSource)
class FoodItemRemoteDataSourceImpl
    implements FoodItemRemoteDataSource {
  final Dio _dio;

  FoodItemRemoteDataSourceImpl(this._dio);

  @override
  Future<GetFoodItemsResponseModel> getFoodItemsOnThisWeek({
    String? name,
  }) async {
    final response = await _dio.get(
      ApiEndpoints.getFoodItemsOnThisWeek,
      queryParameters: {
        if (name != null && name.trim().isNotEmpty)
          'name': name.trim(),
      },
    );

    return GetFoodItemsResponseModel.fromJson(
      response.data,
    );
  }
}
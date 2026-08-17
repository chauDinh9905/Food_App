import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../constants/api/api_endpoints.dart';
import '../models/request/create_order_request_model.dart';
import '../models/request/get_orders_by_month_year_request_model.dart';
import '../models/response/cancel_order_response_model.dart';
import '../models/response/create_order_response_model.dart';
import '../models/response/get_orders_by_month_year_response_model.dart';
import '../models/response/get_orders_response_model.dart';
import 'order_data_source.dart';

@LazySingleton(as: OrderDataSource)
class OrderDataSourceImpl implements OrderDataSource {
  final Dio _dio;

  OrderDataSourceImpl(this._dio);

  @override
  Future<CreateOrderResponseModel> createOrder({
    required int foodId,
    required CreateOrderRequestModel request,
  }) async {
    final response = await _dio.post(
      '${ApiEndpoints.createOrder}/$foodId',
      data: request.toJson(),
    );

    return CreateOrderResponseModel.fromJson(
      response.data,
    );
  }

  @override
  Future<CancelOrderResponseModel> cancelOrder({
    required int foodId,
  }) async {
    final response = await _dio.delete(
      '${ApiEndpoints.cancelOrder}/$foodId',
    );

    return CancelOrderResponseModel.fromJson(
      response.data,
    );
  }

  @override
  Future<GetOrdersResponseModel> getAllOrders({
    int page = 1,
    int limit = 10,
  }) async {
    print('========== GET ALL ORDERS ==========');
    final response = await _dio.get(
      ApiEndpoints.getAllOrdersByUserId,
      queryParameters: {
        'page': page,
        'limit': limit,
      },
    );
    print('GET ALL ORDERS response: ${response.data}');
    return GetOrdersResponseModel.fromJson(
      response.data,
    );
  }

  @override
  Future<GetOrdersByMonthYearResponseModel> getOrdersByMonthYear({
    required GetOrdersByMonthYearRequestModel request,
  }) async {
    print('========== GET ORDERS BY MONTH YEAR ==========');
    final response = await _dio.post(
      ApiEndpoints.getAllOrderByUserIdForMonthYear,
      data: request.toJson(),
    );
    print(
      'GET ORDERS BY MONTH YEAR response: ${response.data}',
    );
    return GetOrdersByMonthYearResponseModel.fromJson(
      response.data,
    );
  }
}
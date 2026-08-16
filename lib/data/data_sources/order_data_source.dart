
import '../models/request/create_order_request_model.dart';
import '../models/request/get_orders_by_month_year_request_model.dart';
import '../models/response/cancel_order_response_model.dart';
import '../models/response/create_order_response_model.dart';
import '../models/response/get_orders_by_month_year_response_model.dart';
import '../models/response/get_orders_response_model.dart';

abstract interface class OrderDataSource {
  Future<CreateOrderResponseModel> createOrder({
    required int foodId,
    required CreateOrderRequestModel request,
  });

  Future<CancelOrderResponseModel> cancelOrder({
    required int foodId,
  });

  Future<GetOrdersResponseModel> getAllOrders({
    int page,
    int limit,
  });

  Future<GetOrdersByMonthYearResponseModel> getOrdersByMonthYear({
    required GetOrdersByMonthYearRequestModel request,
  });
}
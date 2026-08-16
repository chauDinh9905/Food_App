import 'package:injectable/injectable.dart';

import '../../domain/entities/home/order_detail.dart';
import '../../domain/entities/home/paginated_orders.dart';
import '../../domain/repositories/order_repository.dart';
import '../data_mapper/order/get_orders_by_month_year_response_mapper.dart';
import '../data_mapper/order/get_orders_response_mapper.dart';
import '../data_sources/order_data_source.dart';
import '../models/request/create_order_request_model.dart';
import '../models/request/get_orders_by_month_year_request_model.dart';

@Injectable(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  final OrderDataSource dataSource;

  OrderRepositoryImpl(this.dataSource);

  @override
  Future<int> createOrder({
    required int foodId,
    required int quantity,
  }) async {
    final request = CreateOrderRequestModel(
      quantity: quantity,
    );

    final response = await dataSource.createOrder(
      foodId: foodId,
      request: request,
    );

    return response.orderId;
  }

  @override
  Future<void> cancelOrder({
    required int foodId,
  }) async {
    await dataSource.cancelOrder(
      foodId: foodId,
    );
  }

  @override
  Future<PaginatedOrders> getAllOrders({
    required int page,
    required int limit,
  }) async {
    final response = await dataSource.getAllOrders(
      page: page,
      limit: limit,
    );

    return response.toEntity();
  }

  @override
  Future<List<OrderDetail>> getAllOrdersByMonthYear({
    required int month,
    required int year,
  }) async {
    final request = GetOrdersByMonthYearRequestModel(
      month: month,
      year: year,
    );

    final response = await dataSource.getOrdersByMonthYear(
      request: request,
    );

    return response.toEntities();
  }
}
import '../entities/home/order_detail.dart';
import '../entities/home/paginated_orders.dart';


abstract class OrderRepository {
  Future<int> createOrder({  // trả về id của order vừa tạo
    required int foodId,
    required int quantity,
  });

  Future<void> cancelOrder({
    required int foodId,
  });

  Future<PaginatedOrders> getAllOrders({
    required int page,
    required int limit,
  });

  Future<List<OrderDetail>> getAllOrdersByMonthYear({
    required int month,
    required int year,
  });
}
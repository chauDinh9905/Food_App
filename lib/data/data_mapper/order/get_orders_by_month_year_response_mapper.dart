import '../../../domain/entities/food_item.dart';
import '../../../domain/entities/home/order_detail.dart';
import '../../../domain/entities/order.dart';
import '../../models/response/get_orders_by_month_year_response_model.dart';

extension GetOrdersByMonthYearResponseModelMapper
on GetOrdersByMonthYearResponseModel {
  List<OrderDetail> toEntities() {
    return data.map((model) {
      return OrderDetail(
        order: Order(
          id: model.id,
          foodId: model.foodId,
          quantity: model.quantity,
          status: model.status == 'ordered'
              ? OrderStatus.ordered
              : OrderStatus.cancelled,
          orderDate: model.orderDate!,
          createdAt: model.createdAt!,
        ),
        food: FoodItem(
          id: model.foodId,
          name: model.nameFood ?? '',
          description: null,
          price: model.price ?? 0,
          imageUrl: model.imageUrl,
          availableDate: model.availableDate!,
          isOrdered: model.status == 'ordered',
        ),
        totalPrice: model.totalPrice ?? 0,
      );
    }).toList();
  }
}
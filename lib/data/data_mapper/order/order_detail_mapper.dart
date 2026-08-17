import '../../../domain/entities/food_item.dart';
import '../../../domain/entities/home/order_detail.dart';
import '../../../domain/entities/order.dart';
import '../../models/response/order_model.dart';

extension OrderModelToOrderDetailMapper on OrderModel {
  OrderDetail toOrderDetail() {
    return OrderDetail(
      order: Order(
        id: id,
        foodId: foodId,
        quantity: quantity,
        status: status == 'ordered'
            ? OrderStatus.ordered
            : OrderStatus.cancelled,
        orderDate: orderDate!,
        createdAt: createdAt!,
      ),
      food: FoodItem(
        id: foodId,
        name: nameFood ?? '',
        description: null,
        price: price ?? 0,
        imageUrl: imageUrl,
        availableDate: availableDate!,
        isOrdered: status == 'ordered',
      ),
      totalPrice: totalPrice ?? 0,
    );
  }
}
import '../../../domain/entities/order.dart';
import '../../models/response/order_model.dart';

extension OrderModelMapper on OrderModel {
  Order toEntity() {
    return Order(
      id: id,
      foodId: foodId,
      quantity: quantity,
      status: status == 'ordered'
          ? OrderStatus.ordered
          : OrderStatus.cancelled,
      orderDate: orderDate!,
      createdAt: createdAt!,
    );
  }
}
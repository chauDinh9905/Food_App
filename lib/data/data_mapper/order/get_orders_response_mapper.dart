import 'package:projects_for_mobile/data/data_mapper/order/order_detail_mapper.dart';

import '../../../domain/entities/home/paginated_orders.dart';
import '../../models/response/get_orders_response_model.dart';
import 'order_mapper.dart';
import 'order_pagination_mapper.dart';

extension GetOrdersResponseModelMapper on GetOrdersResponseModel {
  PaginatedOrders toEntity() {
    return PaginatedOrders(
      orders: data.map((order) => order.toOrderDetail()).toList(),
      pagination: pagination.toEntity(),
    );
  }
}
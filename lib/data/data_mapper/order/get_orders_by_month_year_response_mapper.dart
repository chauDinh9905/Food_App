import '../../../domain/entities/food_item.dart';
import '../../../domain/entities/home/order_detail.dart';
import '../../../domain/entities/order.dart';
import '../../models/response/get_orders_by_month_year_response_model.dart';
import 'order_detail_mapper.dart';

extension GetOrdersByMonthYearResponseModelMapper
on GetOrdersByMonthYearResponseModel {
  List<OrderDetail> toEntities() {
    return data
        .map((model) => model.toOrderDetail())
        .toList();
  }
}
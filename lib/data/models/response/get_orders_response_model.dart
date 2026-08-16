import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_model.dart';
import 'order_pagination_model.dart';

part 'get_orders_response_model.freezed.dart';
part 'get_orders_response_model.g.dart';

@freezed
abstract class GetOrdersResponseModel with _$GetOrdersResponseModel {
  const factory GetOrdersResponseModel({
    required bool success,
    required List<OrderModel> data,
    required OrderPaginationModel pagination,
  }) = _GetOrdersResponseModel;

  factory GetOrdersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersResponseModelFromJson(json);
}
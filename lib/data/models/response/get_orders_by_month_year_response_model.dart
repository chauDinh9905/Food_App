import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_model.dart';

part 'get_orders_by_month_year_response_model.freezed.dart';
part 'get_orders_by_month_year_response_model.g.dart';

@freezed
abstract class GetOrdersByMonthYearResponseModel
    with _$GetOrdersByMonthYearResponseModel {
  const factory GetOrdersByMonthYearResponseModel({
    required int status,
    required List<OrderModel> data,
  }) = _GetOrdersByMonthYearResponseModel;

  factory GetOrdersByMonthYearResponseModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$GetOrdersByMonthYearResponseModelFromJson(json);
}
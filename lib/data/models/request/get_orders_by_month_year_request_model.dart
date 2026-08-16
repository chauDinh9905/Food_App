import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_orders_by_month_year_request_model.freezed.dart';
part 'get_orders_by_month_year_request_model.g.dart';

@freezed
abstract class GetOrdersByMonthYearRequestModel
    with _$GetOrdersByMonthYearRequestModel {
  const factory GetOrdersByMonthYearRequestModel({
    required int month,
    required int year,
  }) = _GetOrdersByMonthYearRequestModel;

  factory GetOrdersByMonthYearRequestModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$GetOrdersByMonthYearRequestModelFromJson(json);
}
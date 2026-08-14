import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projects_for_mobile/domain/entities/food_item.dart';

import '../order.dart';

part 'order_detail.freezed.dart';

@freezed
abstract class OrderDetail with _$OrderDetail {
  const factory OrderDetail({
    required Order order,
    required FoodItem food,
    required int totalPrice,
  }) = _OrderDetail;
}
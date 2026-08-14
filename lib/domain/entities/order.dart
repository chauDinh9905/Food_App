import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';

@freezed
abstract class Order with _$Order {
  const factory Order({
    required int id,
    required int foodId,
    required int quantity,
    required OrderStatus status,
    required DateTime orderDate,
    required DateTime createdAt,
  }) = _Order;
}

enum OrderStatus {
  ordered,
  cancelled,
}
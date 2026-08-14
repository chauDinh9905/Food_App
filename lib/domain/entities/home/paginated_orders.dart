import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projects_for_mobile/domain/entities/home/pagination.dart';

import '../order.dart';

part 'paginated_orders.freezed.dart';

@freezed
abstract class PaginatedOrders with _$PaginatedOrders {
  const factory PaginatedOrders({
    required List<Order> orders,
    required Pagination pagination,
  }) = _PaginatedOrders;
}
import '../../../domain/entities/home/pagination.dart';
import '../../models/response/order_pagination_model.dart';

extension OrderPaginationModelMapper on OrderPaginationModel {
  Pagination toEntity() {
    return Pagination(
      page: page,
      limit: limit,
      total: total,
      hasMore: hasMore,
    );
  }
}
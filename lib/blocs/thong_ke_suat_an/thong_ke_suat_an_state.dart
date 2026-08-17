import '../../domain/entities/home/order_detail.dart';

sealed class ThongKeState{}

final class ThongKeInitial extends ThongKeState{}
final class ThongKeLoading extends ThongKeState{}
final class ThongKeLoaded extends ThongKeState {
  final List<OrderDetail> orders;
  final int totalPrice;

  final int currentPage;
  final int total;
  final bool hasMore;

  final bool ascending;
  final bool isLoadingMore;

  ThongKeLoaded({
    required this.orders,
    required this.totalPrice,
    required this.currentPage,
    required this.total,
    required this.hasMore,
    this.ascending = true,
    this.isLoadingMore = false,
  });
}

class ThongKeError extends ThongKeState {
  final String message;

  ThongKeError({
    required this.message,
  });
}
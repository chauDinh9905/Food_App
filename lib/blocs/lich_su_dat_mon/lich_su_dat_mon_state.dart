import '../../domain/entities/home/order_detail.dart';

sealed class LichSuState{}

final class LichSuInitial extends LichSuState{}
final class LichSuLoading extends LichSuState{}
final class LichSuLoaded extends LichSuState {
  final List<OrderDetail> orders;
  final int currentPage;
  final int total;
  final bool hasMore;
  final bool ascending;
  final bool isLoadingMore;

  LichSuLoaded({
    required this.orders,
    required this.currentPage,
    required this.total,
    required this.hasMore,
    this.ascending = true,
    this.isLoadingMore = false,
  });
}
class LichSuError extends LichSuState {
  final String message;

  LichSuError({
    required this.message,
  });
}
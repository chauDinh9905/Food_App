sealed class ThongKeEvent {}

final class ThongKeStarted extends ThongKeEvent {}

final class LoadThongKe extends ThongKeEvent {
  final int? month;
  final int? year;

  LoadThongKe({
    this.month,
    this.year,
  });
}

final class LoadMoreThongKe extends ThongKeEvent {}

final class SortThongKe extends ThongKeEvent {
  final bool ascending;

  SortThongKe({
    required this.ascending,
  });
}
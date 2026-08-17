sealed class LichSuEvent{}

final class LichSuStarted extends LichSuEvent{}

final class LoadLichSu extends LichSuEvent {}

final class LoadMoreLichSu extends LichSuEvent {}

final class SortLichSu extends LichSuEvent {
  final bool ascending;

  SortLichSu({required this.ascending});
}
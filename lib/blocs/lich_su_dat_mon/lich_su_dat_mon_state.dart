sealed class LichSuState{}

final class LichSuInitial extends LichSuState{}
final class LichSuLoading extends LichSuState{}
final class LichSuLoaded extends LichSuState{}
class LichSuError extends LichSuState {
  final String message;

  LichSuError({
    required this.message,
  });
}
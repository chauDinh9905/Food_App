sealed class ThongKeState{}

final class ThongKeInitial extends ThongKeState{}
final class ThongKeLoading extends ThongKeState{}
final class ThongKeLoaded extends ThongKeState{}

class ThongKeError extends ThongKeState {
  final String message;

  ThongKeError({
    required this.message,
  });
}
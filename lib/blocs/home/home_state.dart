sealed class HomeState{}

final class HomeInitial extends HomeState {}
final class HomeLoading extends HomeState {}
class HomeLoaded extends HomeState {}

class HomeError extends HomeState {
  final String message;

  HomeError({
    required this.message,
  });
}


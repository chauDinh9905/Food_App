sealed class HomeEvent{}

final class HomeStarted extends HomeEvent {
}

final class OrderFoodRequested extends HomeEvent {
  final int foodId;

  OrderFoodRequested({
    required this.foodId,
  });
}

final class CancelFoodRequested extends HomeEvent {
  final int foodId;

  CancelFoodRequested({
    required this.foodId,
  });
}
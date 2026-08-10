sealed class HomeEvent{}

class HomeStarted extends HomeEvent {}

class OrderFoodRequested extends HomeEvent {
  final int foodId;

  OrderFoodRequested({
    required this.foodId,
  });
}

class CancelFoodRequested extends HomeEvent {
  final int foodId;

  CancelFoodRequested({
    required this.foodId,
  });
}
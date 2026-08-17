import '../../domain/entities/food_item.dart';
import '../../domain/entities/user.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  final User user;
  final List<FoodItem> foodItems;

  HomeLoaded({
    required this.user,
    required this.foodItems,
  });
}

final class HomeError extends HomeState {
  final String message;

  HomeError({
    required this.message,
  });
}
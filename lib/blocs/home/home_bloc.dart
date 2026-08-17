import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/cancel_order.dart';
import '../../domain/use_cases/create_order.dart';
import '../../domain/use_cases/get_food_items_on_this_week_use_case.dart';
import '../../domain/use_cases/get_user_info_use_case.dart';
import 'home_event.dart';
import 'home_state.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetFoodItemsOnThisWeekUseCase
  _getFoodItemsOnThisWeekUseCase;

  final CreateOrderUseCase _createOrderUseCase;

  final CancelOrderUseCase _cancelOrderUseCase;

  final GetUserInfoUseCase _getUserInfoUseCase;

  HomeBloc(
      this._getFoodItemsOnThisWeekUseCase,
      this._createOrderUseCase,
      this._cancelOrderUseCase,
      this._getUserInfoUseCase,
      ) : super(HomeInitial()) {
    on<HomeStarted>(_onHomeStarted);
    on<OrderFoodRequested>(_onOrderFoodRequested);
    on<CancelFoodRequested>(_onCancelFoodRequested);
  }

  Future<void> _onHomeStarted(
      HomeStarted event,
      Emitter<HomeState> emit,
      ) async {
    print("Màn hình home được mở");

    emit(HomeLoading());

    try {
      final user = await _getUserInfoUseCase();

      final foodItems =
      await _getFoodItemsOnThisWeekUseCase();
      print('Số món Home: ${foodItems.length}');

      for (final food in foodItems) {
        print(
          'Món: ${food.name} - availableDate: ${food.availableDate}',
        );
      }
      emit(
        HomeLoaded(
          user: user,
          foodItems: foodItems,
        ),
      );
    } catch (e) {
      emit(
        HomeError(
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _onOrderFoodRequested(
      OrderFoodRequested event,
      Emitter<HomeState> emit,
      ) async {
    try {
      await _createOrderUseCase(
        foodId: event.foodId,
        quantity: 1,
      );

      final foodItems =
      await _getFoodItemsOnThisWeekUseCase();

      if (state is HomeLoaded) {
        final currentState = state as HomeLoaded;

        emit(
          HomeLoaded(
            user: currentState.user,
            foodItems: foodItems,
          ),
        );
      }
    } catch (e) {
      emit(
        HomeError(
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _onCancelFoodRequested(
      CancelFoodRequested event,
      Emitter<HomeState> emit,
      ) async {
    try {
      await _cancelOrderUseCase(
        foodId: event.foodId,
      );

      final foodItems =
      await _getFoodItemsOnThisWeekUseCase();

      if (state is HomeLoaded) {
        final currentState = state as HomeLoaded;

        emit(
          HomeLoaded(
            user: currentState.user,
            foodItems: foodItems,
          ),
        );
      }
    } catch (e) {
      emit(
        HomeError(
          message: e.toString(),
        ),
      );
    }
  }
}
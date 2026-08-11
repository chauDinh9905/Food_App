import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'home_event.dart';
import 'home_state.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeStarted>(_onHomeStarted);
    on<OrderFoodRequested>(_onOrderFoodRequested);
    on<CancelFoodRequested>(_onCancelFoodRequested);
  }

  Future<void> _onHomeStarted(
      HomeStarted event,
      Emitter<HomeState> emit,
      ) async {
    emit(HomeLoading());
    // Sau này lấy user + danh sách món
    // từ UseCase/Repository.
    emit(HomeLoaded());
  }

  Future<void> _onOrderFoodRequested(
      OrderFoodRequested event,
      Emitter<HomeState> emit,
      ) async {
    // Kiểm tra:
    // 1. Chưa đặt món
    // 2. Chưa quá 10:00 AM ngày phục vụ
    // 3. Gọi API đặt món sau này

  }

  Future<void> _onCancelFoodRequested(
      CancelFoodRequested event,
      Emitter<HomeState> emit,
      ) async {
    // Kiểm tra:
    // 1. Đã đặt món
    // 2. Chưa quá 10:00 AM ngày phục vụ
    // 3. Gọi API huỷ món sau này
  }
}
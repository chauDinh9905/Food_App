import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/home/order_detail.dart';
import '../../domain/use_cases/get_all_orders.dart';
import 'lich_su_dat_mon_event.dart';
import 'lich_su_dat_mon_state.dart';

@Injectable()
class LichSuBloc extends Bloc<LichSuEvent, LichSuState> {
  final GetAllOrdersUseCase getAllOrdersUseCase;

  static const int _limit = 10;

  LichSuBloc(
      this.getAllOrdersUseCase,
      ) : super(LichSuInitial()) {
    on<LichSuStarted>(_onLichSuStarted);
    on<LoadLichSu>(_onLoadLichSu);
    on<LoadMoreLichSu>(_onLoadMoreLichSu);
    on<SortLichSu>(_onSortLichSu);
  }

  Future<void> _onLichSuStarted(
      LichSuStarted event,
      Emitter<LichSuState> emit,
      ) async {
    add(LoadLichSu());
  }

  Future<void> _onLoadLichSu(
      LoadLichSu event,
      Emitter<LichSuState> emit,
      ) async {
    try {
      emit(LichSuLoading());

      final result = await getAllOrdersUseCase(
        page: 1,
        limit: _limit,
      );

      emit(
        LichSuLoaded(
          orders: result.orders,
          currentPage: result.pagination.page,
          total: result.pagination.total,
          hasMore: result.pagination.hasMore,
        ),
      );
    } catch (e) {
      emit(
        LichSuError(
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _onLoadMoreLichSu(
      LoadMoreLichSu event,
      Emitter<LichSuState> emit,
      ) async {
    final currentState = state;

    if (currentState is! LichSuLoaded) {
      return;
    }

    if (!currentState.hasMore || currentState.isLoadingMore) {
      return;
    }

    emit(
      LichSuLoaded(
        orders: currentState.orders,
        currentPage: currentState.currentPage,
        total: currentState.total,
        hasMore: currentState.hasMore,
        ascending: currentState.ascending,
        isLoadingMore: true,
      ),
    );

    try {
      final nextPage = currentState.currentPage + 1;

      final result = await getAllOrdersUseCase(
        page: nextPage,
        limit: _limit,
      );

      final updatedOrders = [
        ...currentState.orders,
        ...result.orders,
      ];

      emit(
        LichSuLoaded(
          orders: updatedOrders,
          currentPage: result.pagination.page,
          total: result.pagination.total,
          hasMore: result.pagination.hasMore,
          ascending: currentState.ascending,
        ),
      );
    } catch (e) {
      emit(
        LichSuLoaded(
          orders: currentState.orders,
          currentPage: currentState.currentPage,
          total: currentState.total,
          hasMore: currentState.hasMore,
          ascending: currentState.ascending,
        ),
      );
    }
  }

  Future<void> _onSortLichSu(
      SortLichSu event,
      Emitter<LichSuState> emit,
      ) async {
    final currentState = state;

    if (currentState is! LichSuLoaded) {
      return;
    }

    final sortedOrders = List<OrderDetail>.from(
      currentState.orders,
    );

    sortedOrders.sort((a, b) {
      final dateA = a.food.availableDate;
      final dateB = b.food.availableDate;

      final result = dateA.compareTo(dateB);

      return event.ascending ? result : -result;
    });

    emit(
      LichSuLoaded(
        orders: sortedOrders,
        currentPage: currentState.currentPage,
        total: currentState.total,
        hasMore: currentState.hasMore,
        ascending: event.ascending,
      ),
    );
  }
}
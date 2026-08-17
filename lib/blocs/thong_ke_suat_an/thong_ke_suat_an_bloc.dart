import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/home/order_detail.dart';
import '../../domain/use_cases/get_all_orders.dart';
import '../../domain/use_cases/get_all_orders_by_month_year.dart';
import 'thong_ke_suat_an_event.dart';
import "thong_ke_suat_an_state.dart";

@Injectable()
class ThongKeBloc extends Bloc<ThongKeEvent, ThongKeState> {
  final GetAllOrdersUseCase getAllOrdersUseCase;
  final GetAllOrdersByMonthYearUseCase getAllOrdersByMonthYearUseCase;

  static const int _limit = 10;

  ThongKeBloc(
      this.getAllOrdersUseCase,
      this.getAllOrdersByMonthYearUseCase,
      ) : super(ThongKeInitial()) {
    on<ThongKeStarted>(_onThongKeStarted);
    on<LoadThongKe>(_onLoadThongKe);
    on<LoadMoreThongKe>(_onLoadMoreThongKe);
    on<SortThongKe>(_onSortThongKe);
  }

  Future<void> _onThongKeStarted(
      ThongKeStarted event,
      Emitter<ThongKeState> emit,
      ) async {
    final now = DateTime.now();

    add(
      LoadThongKe(
        month: now.month,
        year: now.year,
      ),
    );
  }

  Future<void> _onLoadThongKe(
      LoadThongKe event,
      Emitter<ThongKeState> emit,
      ) async {
    print(
      'LOAD THỐNG KÊ: month=${event.month}, year=${event.year}',
    );

    try {
      emit(ThongKeLoading());

      // Không chọn tháng + năm
      if (event.month == null && event.year == null) {
        print('GỌI API GET ALL ORDERS');

        final result = await getAllOrdersUseCase(
          page: 1,
          limit: _limit,
        );

        print(
          'THỐNG KÊ GET ALL ORDERS XONG: ${result.orders.length}',
        );

        final totalPrice = result.orders.fold<int>(
          0,
              (sum, order) => sum + order.totalPrice,
        );

        emit(
          ThongKeLoaded(
            orders: result.orders,
            totalPrice: totalPrice,
            currentPage: result.pagination.page,
            total: result.pagination.total,
            hasMore: result.pagination.hasMore,
          ),
        );

        return;
      }

      // Chỉ chọn một trong hai
      if (event.month == null || event.year == null) {
        emit(
          ThongKeError(
            message: 'Vui lòng chọn cả tháng và năm',
          ),
        );

        return;
      }

      // Đã chọn cả tháng + năm
      print(
        'GỌI API THEO THÁNG/NĂM: ${event.month}/${event.year}',
      );

      final orders = await getAllOrdersByMonthYearUseCase(
        month: event.month!,
        year: event.year!,
      );

      final totalPrice = orders.fold<int>(
        0,
            (sum, order) => sum + order.totalPrice,
      );

      print(
        'EMIT THỐNG KÊ LOADED: '
            'orders=${orders.length}, '
            'totalPrice=$totalPrice',
      );

      emit(
        ThongKeLoaded(
          orders: orders,
          totalPrice: totalPrice,
          currentPage: 1,
          total: orders.length,
          hasMore: false,
        ),
      );
    } catch (e) {
      emit(
        ThongKeError(
          message: e.toString(),
        ),
      );
    }
  }
  Future<void> _onLoadMoreThongKe(
      LoadMoreThongKe event,
      Emitter<ThongKeState> emit,
      ) async {
    final currentState = state;

    if (currentState is! ThongKeLoaded) {
      return;
    }

    if (!currentState.hasMore) {
      return;
    }

    if (currentState.isLoadingMore) {
      return;
    }

    emit(
      ThongKeLoaded(
        orders: currentState.orders,
        totalPrice: currentState.totalPrice,
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

      final List<OrderDetail> updatedOrders = [
        ...currentState.orders,
        ...result.orders,
      ];

      final int totalPrice = updatedOrders.fold<int>(
        0,
            (int sum, OrderDetail order) {
          return sum + order.totalPrice;
        },
      );

      emit(
        ThongKeLoaded(
          orders: updatedOrders,
          totalPrice: totalPrice,
          currentPage: result.pagination.page,
          total: result.pagination.total,
          hasMore: result.pagination.hasMore,
          ascending: currentState.ascending,
        ),
      );
    } catch (e) {
      emit(
        ThongKeLoaded(
          orders: currentState.orders,
          totalPrice: currentState.totalPrice,
          currentPage: currentState.currentPage,
          total: currentState.total,
          hasMore: currentState.hasMore,
          ascending: currentState.ascending,
        ),
      );
    }
  }

  Future<void> _onSortThongKe(
      SortThongKe event,
      Emitter<ThongKeState> emit,
      ) async {
    final currentState = state;

    if (currentState is! ThongKeLoaded) {
      return;
    }

    final List<OrderDetail> sortedOrders = List<OrderDetail>.from(
      currentState.orders,
    );

    sortedOrders.sort((a, b) {
      final dateA = a.food.availableDate;
      final dateB = b.food.availableDate;

      final result = dateA.compareTo(dateB);

      return event.ascending ? result : -result;
    });

    emit(
      ThongKeLoaded(
        orders: sortedOrders,
        totalPrice: currentState.totalPrice,
        currentPage: currentState.currentPage,
        total: currentState.total,
        hasMore: currentState.hasMore,
        ascending: event.ascending,
        isLoadingMore: currentState.isLoadingMore,
      ),
    );
  }
}
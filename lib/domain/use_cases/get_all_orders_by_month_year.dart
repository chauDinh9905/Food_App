import 'package:injectable/injectable.dart';

import '../entities/home/order_detail.dart';
import '../repositories/order_repository.dart';

@Injectable()
class GetAllOrdersByMonthYearUseCase {
  final OrderRepository repository;

  GetAllOrdersByMonthYearUseCase(this.repository);

  Future<List<OrderDetail>> call({
    required int month,
    required int year,
  }) {
    return repository.getAllOrdersByMonthYear(
      month: month,
      year: year,
    );
  }
}
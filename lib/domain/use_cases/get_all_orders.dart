import 'package:injectable/injectable.dart';

import '../entities/home/paginated_orders.dart';
import '../repositories/order_repository.dart';

@Injectable()
class GetAllOrdersUseCase {
  final OrderRepository repository;

  GetAllOrdersUseCase(this.repository);

  Future<PaginatedOrders> call({
    required int page,
    required int limit,
  }) {
    return repository.getAllOrders(
      page: page,
      limit: limit,
    );
  }
}
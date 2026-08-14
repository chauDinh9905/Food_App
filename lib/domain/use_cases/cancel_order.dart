import 'package:injectable/injectable.dart';

import '../repositories/order_repository.dart';

@Injectable()
class CancelOrderUseCase {
  final OrderRepository repository;

  CancelOrderUseCase(this.repository);

  Future<void> call({
    required int foodId,
  }) {
    return repository.cancelOrder(
      foodId: foodId,
    );
  }
}
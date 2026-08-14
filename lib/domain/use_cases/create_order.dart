import 'package:injectable/injectable.dart';

import '../repositories/order_repository.dart';

@Injectable()
class CreateOrderUseCase {
  final OrderRepository repository;

  CreateOrderUseCase(this.repository);

  Future<int> call({
    required int foodId,
    required int quantity,
  }) {
    return repository.createOrder(
      foodId: foodId,
      quantity: quantity,
    );
  }
}
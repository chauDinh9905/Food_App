import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_response_model.freezed.dart';
part 'create_order_response_model.g.dart';

@freezed
abstract class CreateOrderResponseModel with _$CreateOrderResponseModel {
  const factory CreateOrderResponseModel({
    required int status,
    required String message,

    @JsonKey(name: 'orderId')
    required int orderId,
  }) = _CreateOrderResponseModel;

  factory CreateOrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseModelFromJson(json);
}
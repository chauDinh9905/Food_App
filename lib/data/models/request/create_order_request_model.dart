import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request_model.freezed.dart';
part 'create_order_request_model.g.dart';

@freezed
abstract class CreateOrderRequestModel with _$CreateOrderRequestModel {
  const factory CreateOrderRequestModel({
    @Default(1)
    int quantity,
  }) = _CreateOrderRequestModel;

  factory CreateOrderRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestModelFromJson(json);
}
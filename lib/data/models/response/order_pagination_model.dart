import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_pagination_model.freezed.dart';
part 'order_pagination_model.g.dart';

@freezed
abstract class OrderPaginationModel with _$OrderPaginationModel {
  const factory OrderPaginationModel({
    required int page,
    required int limit,
    required int total,
    required bool hasMore,
  }) = _OrderPaginationModel;

  factory OrderPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$OrderPaginationModelFromJson(json);
}
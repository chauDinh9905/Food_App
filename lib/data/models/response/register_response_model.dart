import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_response_model.freezed.dart';
part 'register_response_model.g.dart';
@freezed
abstract class RegisterResponseModel with _$RegisterResponseModel {
  const factory RegisterResponseModel({
    @JsonKey(name: 'status')
    required int status,

    @JsonKey(name: 'token')
    String? token,

    @JsonKey(name: 'message')
    required String message,
  }) = _RegisterResponseModel;

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}
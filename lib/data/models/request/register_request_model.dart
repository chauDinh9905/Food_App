import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_model.freezed.dart';
part 'register_request_model.g.dart';
@freezed
@freezed
abstract class RegisterRequestModel with _$RegisterRequestModel {
  const factory RegisterRequestModel({
    @JsonKey(name: 'username')
    required String username,

    @JsonKey(name: 'fullname')
    required String fullname,

    @JsonKey(name: 'password')
    required String password,

    @JsonKey(name: 'employeeCode')
    required String employeeCode,
  }) = _RegisterRequestModel;

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);
}
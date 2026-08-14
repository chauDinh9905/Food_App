import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';
@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'id')
    required int id,

    @JsonKey(name: 'username')
    required String username,

    @JsonKey(name: 'fullname')
    required String fullname,

    @JsonKey(name: 'employee_code')
    required String employeeCode,

    @JsonKey(name: 'role')
    required String role,

    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
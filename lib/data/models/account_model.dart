import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
abstract class AccountModel with _$AccountModel{
  const factory AccountModel({
    @JsonKey(name: 'fullname') String ? fullname,
    @JsonKey(name: 'staffcode') String ? staffcode,
    @JsonKey(name: 'accountname') String ? accountname,
    @JsonKey(name: 'password') String ? password,
  }) = _AccountModel;
  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);
}
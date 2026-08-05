import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  static const usernameDefault = "";
  static const passwordDefault = "";

  const factory User({
    @Default(User.usernameDefault) String ? username,
    @Default(User.passwordDefault) String ? password,
  }) = _User;
}
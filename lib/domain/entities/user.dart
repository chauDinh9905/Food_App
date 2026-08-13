import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
@freezed
abstract class User with _$User {
  static const usernameDefault = "";
  static const fullnameDefault = "";
  static const employeeCodeDefault = "";
  const factory User({
     @Default(User.usernameDefault) String? username,
     @Default(User.fullnameDefault) String? fullname,
     @Default(User.employeeCodeDefault) String? employeeCode,
  }) = _User;
}
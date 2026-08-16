import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_result.freezed.dart';

@freezed
abstract class LoginResult with _$LoginResult {
  const factory LoginResult({
    required int status,
    required String message,
    required String role,
    required String token,
  }) = _LoginResult;
}

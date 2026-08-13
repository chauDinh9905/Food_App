import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_result.freezed.dart';

@freezed
abstract class RegisterResult with _$RegisterResult {
  const factory RegisterResult({
    required int status,
    required String token,
    required String message,
  }) = _RegisterResult;
}
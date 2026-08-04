import 'package:flutter/material.dart';

sealed class LoginState{}
final class LoginInitial extends LoginState{}
final class LoginLoading extends LoginState{}
final class LoginSuccess extends LoginState{}
final class LoginValidationFailure extends LoginState {
  final String? usernameError;
  final String? passwordError;

  LoginValidationFailure({
    this.usernameError,
    this.passwordError,
  });
}

final class LoginAuthenticationFailure extends LoginState {
  final String message;

  LoginAuthenticationFailure(this.message);
}
import 'package:flutter/material.dart';

sealed class SignupEvent{}

final class SignupSubmitted extends SignupEvent{
  final String fullname;
  final String staffcode;
  final String accountname;
  final String password;

  SignupSubmitted({
    required this.fullname,
    required this.staffcode,
    required this.accountname,
    required this.password,
  });
}
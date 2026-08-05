import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';

@freezed
abstract class Account with _$Account{
  static const fullnameDefault = "";
  static const staffcodeDefault = "";
  static const accountnameDefault = "";
  static const passwordDefault = "";

  const factory Account({
     @Default(Account.fullnameDefault) String ? fullname,
     @Default(Account.staffcodeDefault) String ? staffcode,
     @Default(Account.accountnameDefault) String ? accountname,
     @Default(Account.passwordDefault) String ? password,
  }) = _Account;
}
import '../../../domain/entities/user.dart';
import '../../models/response/user_model.dart';

extension UserModelMapper on UserModel {
  User toEntity() {
    return User(
      username: username,
      fullname: fullname,
      employeeCode: employeeCode,
    );
  }
}
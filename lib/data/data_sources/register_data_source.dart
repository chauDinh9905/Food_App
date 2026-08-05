import 'package:dio/dio.dart';

import '../models/account_model.dart';
class RegisterDataSource{
  final Dio dio;
  RegisterDataSource(this.dio);
  Future<AccountModel> signup(String fullname, String staffcode, String accountname, String password) async{
    final response = await dio.post("/signup",
                                   data: {
                                     "fullname": fullname,
                                     "staffcode": staffcode,
                                     "accountname": accountname,
                                     "password": password,
                                   },);
    return AccountModel.fromJson(response.data);
  }
}
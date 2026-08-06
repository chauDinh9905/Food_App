import 'package:dio/dio.dart';

import '../models/user_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthDataSource {
   final Dio dio;
   AuthDataSource(this.dio);
   Future<UserModel> login(String username, String password) async{
     final response = await dio.post("/login",
                                      data: {
                                          "username": username,
                                          "password": password,
                                      },);
     return UserModel.fromJson(response.data);
   }
}
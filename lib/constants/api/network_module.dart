import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

import '../../data/data_sources/local/auth_local_data_source.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio(
      AuthLocalDataSource authLocalDataSource,
      ) {
    final dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env['BASE_URL']!,
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await authLocalDataSource.getToken();

          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          handler.next(options);
        },
      ),
    );

    return dio;
  }
}
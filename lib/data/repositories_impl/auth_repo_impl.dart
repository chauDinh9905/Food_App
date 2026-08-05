import 'package:projects_for_mobile/domain/repositories/auth_repository.dart';

import '../../domain/entities/user.dart';
import '../data_mapper/user_mapper.dart';
import '../data_sources/auth_data_source.dart';

class AuthRepositoryImpl implements AuthRepository{
  final AuthDataSource dataSource;
  final UserMapper mapper;
  AuthRepositoryImpl(this.dataSource, this.mapper);
  @override
  Future<User> login({required String username, required String password}) async{
    final model = await dataSource.login(username, password,);
    return mapper.mapToEntity(model);
  }
}
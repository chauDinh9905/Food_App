import 'package:projects_for_mobile/domain/repositories/register_repository.dart';

import '../../domain/entities/account.dart';
import '../data_mapper/account_mapper.dart';
import '../data_sources/register_data_source.dart';
class RegisterRepositoryImpl implements RegisterRepository{
  final RegisterDataSource dataSource;
  final AccountMapper mapper;
  RegisterRepositoryImpl(this.dataSource, this.mapper);
  @override
  Future<Account> signup({
    required String fullname,
    required String staffcode,
    required String accountname,
    required String password,
  }) async{
    final model = await dataSource.signup(fullname, staffcode, accountname, password);
    return mapper.mapToEntity(model);
  }
}
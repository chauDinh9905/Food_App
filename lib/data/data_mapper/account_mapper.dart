import '../../domain/entities/account.dart';
import '../models/account_model.dart';
import 'package:injectable/injectable.dart';
@Injectable()
class AccountMapper extends BaseDataMapper<Account, AccountModel>{
  @override
  Account mapToEntity(AccountModel? data){
    return Account(
      fullname: data?.fullname ?? Account.fullnameDefault,
      staffcode: data?.staffcode ?? Account.staffcodeDefault,
      accountname: data?.accountname ?? Account.accountnameDefault,
      password: data?.password ?? Account.password
    );
  }
}
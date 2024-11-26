import 'package:advista/domain/core/account_failures.dart';
import 'package:advista/domain/core/admob_account.dart';
import 'package:advista/domain/core/i_account_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAccountRepository)
class AdmobAccountRepository implements IAccountRepository {
  @override
  Either<AccountFailures, AdmobAccount> getAccount() {
    // TODO: implement getAccount
    throw UnimplementedError();
  }
}

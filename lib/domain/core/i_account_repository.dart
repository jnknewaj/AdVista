import 'package:advista/domain/core/account_failures.dart';
import 'package:advista/domain/core/admob_account.dart';
import 'package:dartz/dartz.dart';

abstract class IAccountRepository {
  Future<Either<AccountFailures, AdmobAccount>> getAccount();
  Future<Either<AccountFailures, Unit>> removeAccountId();
}

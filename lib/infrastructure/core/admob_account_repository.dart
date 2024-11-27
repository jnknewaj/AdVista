import 'dart:io';

import 'package:advista/domain/core/account_failures.dart';
import 'package:advista/domain/core/admob_account.dart';
import 'package:advista/domain/core/i_account_repository.dart';
import 'package:advista/infrastructure/core/admob_account_service.dart';
import 'package:advista/infrastructure/core/base_service.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAccountRepository)
class AdmobAccountRepository implements IAccountRepository {
  final AccountService _accountService;

  AdmobAccountRepository(this._accountService);

  @override
  Future<Either<AccountFailures, AdmobAccount>> getAccount() async {
    try {
      final account = await _accountService.fetchAccountInfo();
      return right(account);
    } on HttpException catch (e) {
      return left(AccountFailures.httpFailure(e.hashCode, e.message));
    } on ServiceException catch (e) {
      return left(AccountFailures.unknown(e.message));
    }
  }

  @override
  Future<Either<AccountFailures, Unit>> removeAccountId() async {
    try {
      await _accountService.clearAccountId();
      return right(unit);
    } catch (e) {
      return left(AccountFailures.unknown(e.toString()));
    }
  }
}

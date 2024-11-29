import 'dart:async';
import 'dart:io';

import 'package:advista/domain/auth/auth_failures.dart';
import 'package:advista/domain/core/account_failures.dart';
import 'package:advista/domain/core/admob_account.dart';
import 'package:advista/domain/core/i_account_repository.dart';
import 'package:advista/infrastructure/core/account_service.dart';
import 'package:advista/infrastructure/core/base_service.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

/// Dependent:
///  - [AdmobAccountBloc]
@LazySingleton(as: IAccountRepository)
class AdmobAccountRepository implements IAccountRepository {
  final AccountService _accountService;

  AdmobAccountRepository(this._accountService);

  @override
  Future<Either<AccountFailures, AdmobAccount>> getAccount() async {
    try {
      final account = await _accountService.fetchAccountInfo();
      return right(account);
    } on NetworkException {
      return left(
          const AccountFailures.networkFailure('Check network connection.'));
    } on TimeoutException catch (e) {
      return left(AccountFailures.timeOut('Request timeout : ${e.message}'));
    } on ParsingException catch (e) {
      return left(AccountFailures.parsingFailure(
          'Response parsing failed : ${e.message}'));
    } on TokenNotFoundException catch (e) {
      return left(AccountFailures.tokenNotFound(
          'Any of the tokens or expiry time missing : ${e.message}'));
    } on ServerException catch (e) {
      return left(AccountFailures.serverFailure(msg: e.message, code: e.code));
    } on UnknownException catch (e) {
      return left(AccountFailures.unknown(e.message ?? 'Unexpected error'));
    } catch (e) {
      return left(AccountFailures.unknown(
          'Unknown and unhandled error : ${e.toString()}'));
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

  @override
  Future<Either<AccountFailures, String>> getAccoutOpeningDate() async {
    try {
      final date = await _accountService.fetchAccountOpeningDate();
      return right(date);
    } on IdNotFoundException catch (e) {
      return left(AccountFailures.idNotFound(e.msg));
    } on NetworkException {
      return left(
          const AccountFailures.networkFailure('Check network connection.'));
    } on TimeoutException {
      return left(const AccountFailures.timeOut('Request timeout'));
    } on ParsingException catch (e) {
      return left(AccountFailures.parsingFailure(
          'Response parsing failed : ${e.message}'));
    } on TokenNotFoundException catch (e) {
      return left(AccountFailures.tokenNotFound(e.message));
    } on ServerException catch (e) {
      return left(AccountFailures.serverFailure(msg: e.message, code: e.code));
    } on UnknownException catch (e) {
      return left(AccountFailures.unknown(e.message ?? 'Unexpected error'));
    } catch (e) {
      return left(AccountFailures.unknown(
          'Unknown and unhandled error : ${e.toString()}'));
    }
  }
}

import 'dart:async';

import 'package:advista/domain/adsense/i_payments_repository.dart';
import 'package:advista/domain/adsense/payments.dart';
import 'package:advista/domain/adsense/payments_failures.dart';
import 'package:advista/infrastructure/adsense/adsense_service.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPaymentsRepository)
class PaymentsRepository implements IPaymentsRepository {
  final AdsenseService _service;

  PaymentsRepository(this._service);

  @override
  Future<Either<PaymentsFailures, List<Payments>>> getAllPaymentsInfo() async {
    try {
      final paymentsList = await _service.fetchAllPayments();
      return right(paymentsList);
    } on TokenNotFoundException catch (e) {
      return left(PaymentsFailures.tokenNotFound(e.message));
    } on NetworkException catch (e) {
      return left(PaymentsFailures.networkFailure(e.message));
    } on IdNotFoundException catch (e) {
      return left(PaymentsFailures.idNotFound(e.msg));
    } on ServerException catch (e) {
      return left(PaymentsFailures.serverFailure(e.code, e.message));
    } on TimeoutException catch (e) {
      return left(PaymentsFailures.timeout(
          e.message ?? 'Request timeout, duration : ${e.duration}'));
    } on ParsingException catch (e) {
      return left(PaymentsFailures.parsingFailure(e.message));
    } catch (e) {
      return left(PaymentsFailures.unknown('Unknown error : ${e.toString()}'));
    }
  }

  @override
  Future<Either<PaymentsFailures, Payments>> getUnpaidPaymentsInfo() async {
    try {
      final earning = await _service.fetchTotalEarning();
      return right(earning);
    } on TokenNotFoundException catch (e) {
      return left(PaymentsFailures.tokenNotFound(e.message));
    } on NetworkException catch (e) {
      return left(PaymentsFailures.networkFailure(e.message));
    } on IdNotFoundException catch (e) {
      return left(PaymentsFailures.idNotFound(e.msg));
    } on ServerException catch (e) {
      return left(PaymentsFailures.serverFailure(e.code, e.message));
    } on TimeoutException catch (e) {
      return left(PaymentsFailures.timeout(
          e.message ?? 'Request timeout, duration : ${e.duration}'));
    } on ParsingException catch (e) {
      return left(PaymentsFailures.parsingFailure(e.message));
    } catch (e) {
      return left(PaymentsFailures.unknown('Unknown error : ${e.toString()}'));
    }
  }
}

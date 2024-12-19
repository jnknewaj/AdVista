import 'package:advista/domain/adsense/payments.dart';
import 'package:advista/domain/adsense/payments_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IPaymentsRepository {
  Future<Either<PaymentsFailures, List<Payments>>> getAllPaymentsInfo();
  Future<Either<PaymentsFailures, Payments>> getUnpaidPaymentsInfo();
}

import 'package:advista/domain/apps_metrics/apps.dart';
import 'package:advista/domain/apps_metrics/apps_data_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IAppsDataRepository {
  Future<Either<AppsDataFailures, List<Apps>>> getApps();
}

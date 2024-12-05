// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:io';

import 'package:advista/domain/apps_metrics/apps_data_failures.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:advista/domain/apps_metrics/apps.dart';
import 'package:advista/domain/apps_metrics/i_apps_data_repository.dart';
import 'package:advista/infrastructure/apps_metrics/apps_data_service.dart';

@LazySingleton(as: IAppsDataRepository)
class AppsDataRepository implements IAppsDataRepository {
  final AppsDataService _service;
  AppsDataRepository(this._service);

  @override
  Future<Either<AppsDataFailures, List<Apps>>> getApps() async {
    try {
      final apps = await _service.fetchApps();
      return right(apps);
    } on SocketException catch (e) {
      return left(const AppsDataFailures.networkFailure('Check Network'));
    } on TimeoutException catch (e) {
      return left(const AppsDataFailures.timeoutFailure('Request Timeout'));
    } on ParsingException catch (e) {
      return left(ParsingFailure('Parsing failed : ${e.message}'));
    } on TokenNotFoundException catch (e) {
      return left(AppsDataFailures.tokenNotFoundFailure(e.message));
    } on ServerException catch (e) {
      return left(AppsDataFailures.serverFailure(
          'Server error. Message : ${e.message}. Code : ${e.code}'));
    } on IdNotFoundException catch (e) {
      return left(AppsDataFailures.idNotFound(e.msg));
    } on HtmlException catch (e) {
      return left(AppsDataFailures.htmlFailure(e.message));
    } catch (e) {
      return left(AppsDataFailures.unknown(e.toString()));
    }
  }
}

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@module
abstract class ThirdPartyInjectableModuels {
  @LazySingleton()
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();
  @lazySingleton
  http.Client get client => http.Client();
}

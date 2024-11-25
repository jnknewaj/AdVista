import 'package:advista/utils/string_consts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class GoogleInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
        scopes: [
          'email',
          'https://www.googleapis.com/auth/admob.report',
          // Add any other scopes your app needs
        ],
        serverClientId: CLIENT_ID,
        forceCodeForRefreshToken: true,
      );
}

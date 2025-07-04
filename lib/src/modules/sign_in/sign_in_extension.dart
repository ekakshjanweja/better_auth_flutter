import 'package:better_auth_flutter/src/better_auth_client.dart';
import 'package:better_auth_flutter/src/core/better_auth_flutter.dart';
import 'package:better_auth_flutter/src/modules/sign_in/sign_in.dart';

extension SignInBetterAuthExtension on BetterAuthClient {
  SignIn get signIn =>
      SignIn(BetterAuthFlutter.dioClient, baseUrl: BetterAuthFlutter.baseUrl);
}

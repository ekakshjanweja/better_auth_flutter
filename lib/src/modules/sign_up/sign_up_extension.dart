import 'package:better_auth_flutter/src/better_auth_client.dart';
import 'package:better_auth_flutter/src/core/better_auth_flutter.dart';
import 'package:better_auth_flutter/src/modules/sign_up/sign_up.dart';

extension SignUpBetterAuthExtension on BetterAuthClient {
  SignUp get signUp =>
      SignUp(BetterAuthFlutter.dioClient, baseUrl: BetterAuthFlutter.baseUrl);
}

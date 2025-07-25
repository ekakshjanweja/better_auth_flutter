import "package:better_auth_flutter/better_auth_flutter.dart";

class Accounts {
  static Future<(List<Account>?, BetterAuthFailure?)> listAccounts() async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.listAccounts,
        method: MethodType.get,
      );

      if (error != null) return (null, error);

      if (result is! List) throw Exception("Invalid response format");

      final List<Account> accounts =
          result
              .map(
                (account) => Account.fromMap(account as Map<String, dynamic>),
              )
              .toList();

      return (accounts, null);
    } catch (e) {
      return (
        null,
        BetterAuthFailure(
          code: BetterAuthError.unKnownError,
          message: e.toString(),
        ),
      );
    }
  }
}

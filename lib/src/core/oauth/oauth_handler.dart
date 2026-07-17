import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/api/default/sign_in/models/social/body/sign_in_social_body.dart";
import "package:better_auth_flutter/src/core/api/default/sign_in/models/social/social_provider.dart";
import "package:better_auth_flutter/src/core/api/models/result/better_error/better_error.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:flutter_web_auth_2/flutter_web_auth_2.dart";

/// Drives the browser-redirect leg of social sign-in.
///
/// This is the flow for providers without a native SDK. Google and Apple are
/// better served by the native ID-token path (`SignInSocialBody.of(idToken:)`),
/// which avoids the browser and the cookie caveat below entirely.
///
/// **The cookie caveat.** The system browser used here
/// (`ASWebAuthenticationSession` on iOS, Chrome Custom Tabs on Android) keeps
/// its own cookie store. A session cookie Better Auth sets during the redirect
/// lands there, not in this package's Dio jar — so a plain cookie-mode flow
/// cannot pick the session up afterward. The reliable answer is a token handoff:
/// point [callbackURL] at a server route that mints a one-time token and
/// redirects to `<scheme>://callback?token=…`, then exchange it with the
/// `one_time_token` plugin. [parseCallback] extracts that token.
class OAuthHandler {
  OAuthHandler({
    required this.client,
    required this.scheme,
    Future<String> Function({
      required String url,
      required String callbackUrlScheme,
    })?
    authenticate,
  }) : _authenticate = authenticate ?? _defaultAuthenticate;

  final BetterAuthClient client;

  /// The custom URL scheme registered for the app (see the platform setup in
  /// the README). Must be non-null to start a redirect flow.
  final String? scheme;

  final Future<String> Function({
    required String url,
    required String callbackUrlScheme,
  })
  _authenticate;

  static Future<String> _defaultAuthenticate({
    required String url,
    required String callbackUrlScheme,
  }) => FlutterWebAuth2.authenticate(
    url: url,
    callbackUrlScheme: callbackUrlScheme,
  );

  /// Requests the provider's authorization URL from Better Auth.
  ///
  /// Returns the URL to open in a browser. Prefer [signIn], which also runs the
  /// browser step.
  Future<Result<String>> authorizationUrl({
    required SocialProvider provider,
    String? callbackURL,
    List<String>? scopes,
  }) async {
    final result = await client.signInSocial(
      body: SignInSocialBody.of(
        provider: provider,
        callbackURL: callbackURL ?? _defaultCallback(),
        scopes: scopes,
      ),
    );

    return switch (result) {
      Success(:final data) when data.url.isNotEmpty => Result.ok(data.url),
      Success() => Result.err(
        const BetterError(
          code: "NO_REDIRECT_URL",
          message: "Server returned no authorization URL for this provider.",
          stack: null,
        ),
      ),
      Failure(:final error) => Result.err(error),
    };
  }

  /// Runs the full redirect flow: fetch the URL, open the browser, and return
  /// the parsed callback.
  ///
  /// The returned [SocialCallback] carries whatever the callback URL contained.
  /// In a token-handoff setup, exchange `callback.token` via the
  /// `one_time_token` plugin to establish the session in this package's jar.
  Future<Result<SocialCallback>> signIn({
    required SocialProvider provider,
    String? callbackURL,
    List<String>? scopes,
  }) async {
    final s = scheme;
    if (s == null || s.isEmpty) {
      return Result.err(
        const BetterError(
          code: "MISSING_CALLBACK_SCHEME",
          message:
              "Set callbackUrlScheme in BetterAuthFlutter.initialize, and "
              "register the matching CallbackActivity/URL scheme in your app. "
              "See the README's platform setup.",
          stack: null,
        ),
      );
    }

    final urlResult = await authorizationUrl(
      provider: provider,
      callbackURL: callbackURL,
      scopes: scopes,
    );

    return switch (urlResult) {
      Failure(:final error) => Result.err(error),
      Success(:final data) => await _runBrowser(data, s),
    };
  }

  Future<Result<SocialCallback>> _runBrowser(String url, String scheme) async {
    try {
      final raw = await _authenticate(url: url, callbackUrlScheme: scheme);
      return Result.ok(SocialCallback.parse(raw));
    } catch (e) {
      return Result.err(
        BetterError(
          code: "OAUTH_CANCELLED",
          message: "The sign-in flow did not complete: $e",
          stack: null,
        ),
      );
    }
  }

  String _defaultCallback() => "$scheme://callback";
}

/// The result of a completed browser redirect.
class SocialCallback {
  const SocialCallback({required this.uri, this.token, this.error});

  /// The full callback URI the browser returned.
  final Uri uri;

  /// A one-time token from the callback query, when present. Exchange it via
  /// the `one_time_token` plugin to establish the session.
  final String? token;

  /// An error code from the callback query (e.g. `access_denied`), if the
  /// provider reported one.
  final String? error;

  /// Parses a raw callback URL. Recognizes `token` / `ott` (one-time token) and
  /// `error` query parameters.
  factory SocialCallback.parse(String raw) {
    final uri = Uri.parse(raw);
    final q = uri.queryParameters;
    return SocialCallback(
      uri: uri,
      token: q["token"] ?? q["ott"] ?? q["one_time_token"],
      error: q["error"],
    );
  }

  bool get isError => error != null;
}

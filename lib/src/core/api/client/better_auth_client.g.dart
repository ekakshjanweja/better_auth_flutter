// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'better_auth_client.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main,avoid_redundant_argument_values

class _BetterAuthClient implements BetterAuthClient {
  _BetterAuthClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  Future<HttpResponse<StatusResponse>> _ok() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/ok',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> ok() {
    return BetterAuthCallAdapter<StatusResponse>().adapt(() => _ok());
  }

  Future<HttpResponse<dynamic>> _openApiReference() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/reference/openapi.json',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> openApiReference() {
    return BetterAuthCallAdapter<dynamic>().adapt(() => _openApiReference());
  }

  Future<HttpResponse<SignUpResponse>> _signUpEmail({
    required String name,
    required String email,
    required String password,
    String? image,
    String? callbackURL,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'image': image,
      'callbackURL': callbackURL,
    };
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<SignUpResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/sign-up/email',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SignUpResponse _value;
    try {
      _value = SignUpResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<SignUpResponse>> signUpEmail({
    required String name,
    required String email,
    required String password,
    String? image,
    String? callbackURL,
  }) {
    return BetterAuthCallAdapter<SignUpResponse>().adapt(
      () => _signUpEmail(
        name: name,
        email: email,
        password: password,
        image: image,
        callbackURL: callbackURL,
      ),
    );
  }

  Future<HttpResponse<SignInEmailResponse>> _signInEmail({
    required String email,
    required String password,
    bool? rememberMe,
    String? callbackURL,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{
      'email': email,
      'password': password,
      'rememberMe': rememberMe,
      'callbackURL': callbackURL,
    };
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<SignInEmailResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/sign-in/email',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SignInEmailResponse _value;
    try {
      _value = SignInEmailResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<SignInEmailResponse>> signInEmail({
    required String email,
    required String password,
    bool? rememberMe,
    String? callbackURL,
  }) {
    return BetterAuthCallAdapter<SignInEmailResponse>().adapt(
      () => _signInEmail(
        email: email,
        password: password,
        rememberMe: rememberMe,
        callbackURL: callbackURL,
      ),
    );
  }

  Future<HttpResponse<SignInEmailResponse>> _signInUsername({
    required String username,
    required String password,
    bool? rememberMe,
    String? callbackURL,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{
      'username': username,
      'password': password,
      'rememberMe': rememberMe,
      'callbackURL': callbackURL,
    };
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<SignInEmailResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/sign-in/username',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SignInEmailResponse _value;
    try {
      _value = SignInEmailResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<SignInEmailResponse>> signInUsername({
    required String username,
    required String password,
    bool? rememberMe,
    String? callbackURL,
  }) {
    return BetterAuthCallAdapter<SignInEmailResponse>().adapt(
      () => _signInUsername(
        username: username,
        password: password,
        rememberMe: rememberMe,
        callbackURL: callbackURL,
      ),
    );
  }

  Future<HttpResponse<SignInSocialResponse>> _signInSocial({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<SignInSocialResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/sign-in/social',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SignInSocialResponse _value;
    try {
      _value = SignInSocialResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<SignInSocialResponse>> signInSocial({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<SignInSocialResponse>().adapt(
      () => _signInSocial(body: body),
    );
  }

  Future<HttpResponse<SessionResponse>> _getSession() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<SessionResponse>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/get-session',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SessionResponse _value;
    try {
      _value = SessionResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<SessionResponse>> getSession() {
    return BetterAuthCallAdapter<SessionResponse>().adapt(() => _getSession());
  }

  Future<HttpResponse<SessionResponse>> _getSessionPost({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<SessionResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/get-session',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SessionResponse _value;
    try {
      _value = SessionResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<SessionResponse>> getSessionPost({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<SessionResponse>().adapt(
      () => _getSessionPost(body: body),
    );
  }

  Future<HttpResponse<SignOutResponse>> _signOut({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<SignOutResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/sign-out',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SignOutResponse _value;
    try {
      _value = SignOutResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<SignOutResponse>> signOut({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<SignOutResponse>().adapt(
      () => _signOut(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _forgotPassword({
    required String email,
    String? redirectTo,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'email': email, 'redirectTo': redirectTo};
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/forget-password',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> forgotPassword({
    required String email,
    String? redirectTo,
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _forgotPassword(email: email, redirectTo: redirectTo),
    );
  }

  Future<HttpResponse<StatusResponse>> _resetPassword({
    required String newPassword,
    String? token,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'newPassword': newPassword, 'token': token};
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/reset-password',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> resetPassword({
    required String newPassword,
    String? token,
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _resetPassword(newPassword: newPassword, token: token),
    );
  }

  Future<HttpResponse<StatusResponse>> _validateResetPasswordToken({
    required String token,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/reset-password/${token}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> validateResetPasswordToken({
    required String token,
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _validateResetPasswordToken(token: token),
    );
  }

  Future<HttpResponse<StatusResponse>> _setPassword({
    required String newPassword,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'newPassword': newPassword};
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/set-password',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> setPassword({required String newPassword}) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _setPassword(newPassword: newPassword),
    );
  }

  Future<HttpResponse<VerifyEmailResponse>> _verifyEmail({
    required String token,
    String? callbackURL,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'token': token,
      r'callbackURL': callbackURL,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<VerifyEmailResponse>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/verify-email',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late VerifyEmailResponse _value;
    try {
      _value = VerifyEmailResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<VerifyEmailResponse>> verifyEmail({
    required String token,
    String? callbackURL,
  }) {
    return BetterAuthCallAdapter<VerifyEmailResponse>().adapt(
      () => _verifyEmail(token: token, callbackURL: callbackURL),
    );
  }

  Future<HttpResponse<StatusResponse>> _sendVerificationEmail({
    required String email,
    String? callbackURL,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'email': email, 'callbackURL': callbackURL};
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/send-verification-email',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> sendVerificationEmail({
    required String email,
    String? callbackURL,
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _sendVerificationEmail(email: email, callbackURL: callbackURL),
    );
  }

  Future<HttpResponse<StatusResponse>> _changeEmail({
    required String newEmail,
    String? callbackURL,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{
      'newEmail': newEmail,
      'callbackURL': callbackURL,
    };
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/change-email',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> changeEmail({
    required String newEmail,
    String? callbackURL,
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _changeEmail(newEmail: newEmail, callbackURL: callbackURL),
    );
  }

  Future<HttpResponse<SignUpResponse>> _changePassword({
    required String newPassword,
    required String currentPassword,
    bool? revokeOtherSessions,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{
      'newPassword': newPassword,
      'currentPassword': currentPassword,
      'revokeOtherSessions': revokeOtherSessions,
    };
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<SignUpResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/change-password',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SignUpResponse _value;
    try {
      _value = SignUpResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<SignUpResponse>> changePassword({
    required String newPassword,
    required String currentPassword,
    bool? revokeOtherSessions,
  }) {
    return BetterAuthCallAdapter<SignUpResponse>().adapt(
      () => _changePassword(
        newPassword: newPassword,
        currentPassword: currentPassword,
        revokeOtherSessions: revokeOtherSessions,
      ),
    );
  }

  Future<HttpResponse<StatusResponse>> _updateUser({
    String? name,
    String? image,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'name': name, 'image': image};
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/update-user',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> updateUser({String? name, String? image}) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _updateUser(name: name, image: image),
    );
  }

  Future<HttpResponse<SuccessResponse>> _deleteUser({
    String? callbackURL,
    String? password,
    String? token,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{
      'callbackURL': callbackURL,
      'password': password,
      'token': token,
    };
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<SuccessResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/delete-user',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SuccessResponse _value;
    try {
      _value = SuccessResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<SuccessResponse>> deleteUser({
    String? callbackURL,
    String? password,
    String? token,
  }) {
    return BetterAuthCallAdapter<SuccessResponse>().adapt(
      () => _deleteUser(
        callbackURL: callbackURL,
        password: password,
        token: token,
      ),
    );
  }

  Future<HttpResponse<StatusResponse>> _deleteUserCallback({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/delete-user/callback',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> deleteUserCallback({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _deleteUserCallback(queries: queries),
    );
  }

  Future<HttpResponse<List<Account>>> _listAccounts() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<List<Account>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/list-accounts',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<Account> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => Account.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<List<Account>>> listAccounts() {
    return BetterAuthCallAdapter<List<Account>>().adapt(() => _listAccounts());
  }

  Future<HttpResponse<StatusResponse>> _unlinkAccount({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/unlink-account',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> unlinkAccount({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _unlinkAccount(body: body),
    );
  }

  Future<HttpResponse<List<Session>>> _listSessions() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<List<Session>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/list-sessions',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<Session> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => Session.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<List<Session>>> listSessions() {
    return BetterAuthCallAdapter<List<Session>>().adapt(() => _listSessions());
  }

  Future<HttpResponse<StatusResponse>> _revokeSession({
    required String token,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'token': token};
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/revoke-session',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> revokeSession({required String token}) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _revokeSession(token: token),
    );
  }

  Future<HttpResponse<StatusResponse>> _revokeSessions({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/revoke-sessions',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> revokeSessions({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _revokeSessions(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _revokeOtherSessions({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/revoke-other-sessions',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> revokeOtherSessions({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _revokeOtherSessions(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _oauthCallback({
    required String provider,
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/callback/${provider}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> oauthCallback({
    required String provider,
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _oauthCallback(provider: provider, queries: queries),
    );
  }

  Future<HttpResponse<SignInSocialResponse>> _linkSocial({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<SignInSocialResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/link-social',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SignInSocialResponse _value;
    try {
      _value = SignInSocialResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<SignInSocialResponse>> linkSocial({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<SignInSocialResponse>().adapt(
      () => _linkSocial(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _getAccessToken({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/get-access-token',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> getAccessToken({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _getAccessToken(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _refreshToken({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/refresh-token',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> refreshToken({Map<String, dynamic> body = const {}}) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _refreshToken(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _enableTwoFactor({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/two-factor/enable',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> enableTwoFactor({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _enableTwoFactor(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _disableTwoFactor({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/two-factor/disable',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> disableTwoFactor({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _disableTwoFactor(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _getTotpUri({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/two-factor/get-totp-uri',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> getTotpUri({Map<String, dynamic> body = const {}}) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _getTotpUri(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _verifyTotp({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/two-factor/verify-totp',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> verifyTotp({Map<String, dynamic> body = const {}}) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _verifyTotp(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _sendTwoFactorOtp({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/two-factor/send-otp',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> sendTwoFactorOtp({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _sendTwoFactorOtp(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _verifyTwoFactorOtp({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/two-factor/verify-otp',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> verifyTwoFactorOtp({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _verifyTwoFactorOtp(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _generateBackupCodes({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/two-factor/generate-backup-codes',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> generateBackupCodes({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _generateBackupCodes(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _verifyBackupCode({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/two-factor/verify-backup-code',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> verifyBackupCode({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _verifyBackupCode(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _createOrganization({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/create',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> createOrganization({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _createOrganization(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _updateOrganization({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/update',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> updateOrganization({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _updateOrganization(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _deleteOrganization({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/delete',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> deleteOrganization({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _deleteOrganization(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _listOrganizations({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/list',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> listOrganizations({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _listOrganizations(queries: queries),
    );
  }

  Future<HttpResponse<dynamic>> _getFullOrganization({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/get-full-organization',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> getFullOrganization({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _getFullOrganization(queries: queries),
    );
  }

  Future<HttpResponse<dynamic>> _checkOrganizationSlug({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/check-slug',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> checkOrganizationSlug({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _checkOrganizationSlug(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _setActiveOrganization({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/set-active',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> setActiveOrganization({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _setActiveOrganization(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _leaveOrganization({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/leave',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> leaveOrganization({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _leaveOrganization(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _getActiveOrganizationMember({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/get-active-member',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> getActiveOrganizationMember({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _getActiveOrganizationMember(queries: queries),
    );
  }

  Future<HttpResponse<dynamic>> _listOrganizationMembers({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/list-members',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> listOrganizationMembers({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _listOrganizationMembers(queries: queries),
    );
  }

  Future<HttpResponse<StatusResponse>> _removeOrganizationMember({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/remove-member',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> removeOrganizationMember({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _removeOrganizationMember(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _updateOrganizationMemberRole({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/update-member-role',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> updateOrganizationMemberRole({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _updateOrganizationMemberRole(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _inviteOrganizationMember({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/invite-member',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> inviteOrganizationMember({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _inviteOrganizationMember(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _getOrganizationInvitation({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/get-invitation',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> getOrganizationInvitation({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _getOrganizationInvitation(queries: queries),
    );
  }

  Future<HttpResponse<dynamic>> _listOrganizationInvitations({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/list-invitations',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> listOrganizationInvitations({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _listOrganizationInvitations(queries: queries),
    );
  }

  Future<HttpResponse<dynamic>> _listUserOrganizationInvitations({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/list-user-invitations',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> listUserOrganizationInvitations({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _listUserOrganizationInvitations(queries: queries),
    );
  }

  Future<HttpResponse<dynamic>> _acceptOrganizationInvitation({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/accept-invitation',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> acceptOrganizationInvitation({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _acceptOrganizationInvitation(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _rejectOrganizationInvitation({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/reject-invitation',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> rejectOrganizationInvitation({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _rejectOrganizationInvitation(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _cancelOrganizationInvitation({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/cancel-invitation',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> cancelOrganizationInvitation({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _cancelOrganizationInvitation(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _organizationHasPermission({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/organization/has-permission',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> organizationHasPermission({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _organizationHasPermission(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _adminSetRole({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/set-role',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> adminSetRole({Map<String, dynamic> body = const {}}) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _adminSetRole(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _adminCreateUser({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/create-user',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> adminCreateUser({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _adminCreateUser(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _adminListUsers({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/list-users',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> adminListUsers({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _adminListUsers(queries: queries),
    );
  }

  Future<HttpResponse<List<Session>>> _adminListUserSessions({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<List<Session>>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/list-user-sessions',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<Session> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => Session.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<List<Session>>> adminListUserSessions({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<List<Session>>().adapt(
      () => _adminListUserSessions(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _adminBanUser({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/ban-user',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> adminBanUser({Map<String, dynamic> body = const {}}) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _adminBanUser(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _adminUnbanUser({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/unban-user',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> adminUnbanUser({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _adminUnbanUser(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _adminImpersonateUser({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/impersonate-user',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> adminImpersonateUser({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _adminImpersonateUser(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _adminStopImpersonating({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/stop-impersonating',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> adminStopImpersonating({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _adminStopImpersonating(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _adminRevokeUserSession({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/revoke-user-session',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> adminRevokeUserSession({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _adminRevokeUserSession(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _adminRevokeUserSessions({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/revoke-user-sessions',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> adminRevokeUserSessions({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _adminRevokeUserSessions(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _adminRemoveUser({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/remove-user',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> adminRemoveUser({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _adminRemoveUser(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _adminSetUserPassword({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/set-user-password',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> adminSetUserPassword({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _adminSetUserPassword(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _adminHasPermission({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/admin/has-permission',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> adminHasPermission({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _adminHasPermission(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _createApiKey({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api-key/create',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> createApiKey({Map<String, dynamic> body = const {}}) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _createApiKey(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _getApiKey({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api-key/get',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> getApiKey({Map<String, dynamic> queries = const {}}) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _getApiKey(queries: queries),
    );
  }

  Future<HttpResponse<dynamic>> _updateApiKey({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api-key/update',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> updateApiKey({Map<String, dynamic> body = const {}}) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _updateApiKey(body: body),
    );
  }

  Future<HttpResponse<StatusResponse>> _deleteApiKey({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api-key/delete',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> deleteApiKey({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _deleteApiKey(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _listApiKeys({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api-key/list',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> listApiKeys({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _listApiKeys(queries: queries),
    );
  }

  Future<HttpResponse<dynamic>> _generatePasskeyRegisterOptions({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/passkey/generate-register-options',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> generatePasskeyRegisterOptions({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _generatePasskeyRegisterOptions(queries: queries),
    );
  }

  Future<HttpResponse<dynamic>> _verifyPasskeyRegistration({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/passkey/verify-registration',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> verifyPasskeyRegistration({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _verifyPasskeyRegistration(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _generatePasskeyAuthenticateOptions({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/passkey/generate-authenticate-options',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> generatePasskeyAuthenticateOptions({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _generatePasskeyAuthenticateOptions(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _verifyPasskeyAuthentication({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/passkey/verify-authentication',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> verifyPasskeyAuthentication({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _verifyPasskeyAuthentication(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _listUserPasskeys({
    Map<String, dynamic> queries = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/passkey/list-user-passkeys',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> listUserPasskeys({
    Map<String, dynamic> queries = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _listUserPasskeys(queries: queries),
    );
  }

  Future<HttpResponse<StatusResponse>> _deletePasskey({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<StatusResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/passkey/delete-passkey',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StatusResponse _value;
    try {
      _value = StatusResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<StatusResponse>> deletePasskey({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<StatusResponse>().adapt(
      () => _deletePasskey(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _updatePasskey({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/passkey/update-passkey',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> updatePasskey({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _updatePasskey(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _createDeviceCode({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/device/code',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> createDeviceCode({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _createDeviceCode(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _createDeviceToken({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/device/token',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> createDeviceToken({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _createDeviceToken(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _approveDevice({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/device/approve',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> approveDevice({
    Map<String, dynamic> body = const {},
  }) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _approveDevice(body: body),
    );
  }

  Future<HttpResponse<dynamic>> _denyDevice({
    Map<String, dynamic> body = const {},
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/device/deny',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<Result<dynamic>> denyDevice({Map<String, dynamic> body = const {}}) {
    return BetterAuthCallAdapter<dynamic>().adapt(
      () => _denyDevice(body: body),
    );
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on

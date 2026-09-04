// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'better_auth_email_otp.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main,avoid_redundant_argument_values

class _BetterAuthEmailOtp implements BetterAuthEmailOtp {
  _BetterAuthEmailOtp(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  Future<HttpResponse<SuccessResponse>> _sendVerification({
    required String email,
    required String type,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'email': email, 'type': type};
    final _options = _setStreamType<Result<SuccessResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/email-otp/send-verification-otp',
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
  Future<Result<SuccessResponse>> sendVerification({
    required String email,
    required String type,
  }) {
    return BetterAuthCallAdapter<SuccessResponse>().adapt(
      () => _sendVerification(email: email, type: type),
    );
  }

  Future<HttpResponse<SignUpResponse>> _verifyEmail({
    required String email,
    required String otp,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'email': email, 'otp': otp};
    final _options = _setStreamType<Result<SignUpResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/email-otp/verify-email',
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
  Future<Result<SignUpResponse>> verifyEmail({
    required String email,
    required String otp,
  }) {
    return BetterAuthCallAdapter<SignUpResponse>().adapt(
      () => _verifyEmail(email: email, otp: otp),
    );
  }

  Future<HttpResponse<SignUpResponse>> _signIn({
    required String email,
    required String otp,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'email': email, 'otp': otp};
    final _options = _setStreamType<Result<SignUpResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/sign-in/email-otp',
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
  Future<Result<SignUpResponse>> signIn({
    required String email,
    required String otp,
  }) {
    return BetterAuthCallAdapter<SignUpResponse>().adapt(
      () => _signIn(email: email, otp: otp),
    );
  }

  Future<HttpResponse<SuccessResponse>> _forgotPassword({
    required String email,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'email': email};
    final _options = _setStreamType<Result<SuccessResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/forget-password/email-otp',
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
  Future<Result<SuccessResponse>> forgotPassword({required String email}) {
    return BetterAuthCallAdapter<SuccessResponse>().adapt(
      () => _forgotPassword(email: email),
    );
  }

  Future<HttpResponse<SuccessResponse>> _resetPassword({
    required String email,
    required String otp,
    required String password,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{
      'email': email,
      'otp': otp,
      'password': password,
    };
    final _options = _setStreamType<Result<SuccessResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/email-otp/reset-password',
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
  Future<Result<SuccessResponse>> resetPassword({
    required String email,
    required String otp,
    required String password,
  }) {
    return BetterAuthCallAdapter<SuccessResponse>().adapt(
      () => _resetPassword(email: email, otp: otp, password: password),
    );
  }

  Future<HttpResponse<SuccessResponse>> _requestEmailChange({
    required String newEmail,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'newEmail': newEmail};
    final _options = _setStreamType<Result<SuccessResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/email-otp/request-email-change',
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
  Future<Result<SuccessResponse>> requestEmailChange({
    required String newEmail,
  }) {
    return BetterAuthCallAdapter<SuccessResponse>().adapt(
      () => _requestEmailChange(newEmail: newEmail),
    );
  }

  Future<HttpResponse<SuccessResponse>> _changeEmail({
    required String newEmail,
    required String otp,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'newEmail': newEmail, 'otp': otp};
    final _options = _setStreamType<Result<SuccessResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/email-otp/change-email',
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
  Future<Result<SuccessResponse>> changeEmail({
    required String newEmail,
    required String otp,
  }) {
    return BetterAuthCallAdapter<SuccessResponse>().adapt(
      () => _changeEmail(newEmail: newEmail, otp: otp),
    );
  }

  Future<HttpResponse<SuccessResponse>> _checkVerificationOtp({
    required String email,
    required String type,
    required String otp,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'email': email, 'type': type, 'otp': otp};
    final _options = _setStreamType<Result<SuccessResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/email-otp/check-verification-otp',
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
  Future<Result<SuccessResponse>> checkVerificationOtp({
    required String email,
    required String type,
    required String otp,
  }) {
    return BetterAuthCallAdapter<SuccessResponse>().adapt(
      () => _checkVerificationOtp(email: email, type: type, otp: otp),
    );
  }

  Future<HttpResponse<SuccessResponse>> _requestPasswordReset({
    required String email,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{'email': email};
    final _options = _setStreamType<Result<SuccessResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/email-otp/request-password-reset',
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
  Future<Result<SuccessResponse>> requestPasswordReset({
    required String email,
  }) {
    return BetterAuthCallAdapter<SuccessResponse>().adapt(
      () => _requestPasswordReset(email: email),
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

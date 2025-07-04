import "package:dio/dio.dart";

/// An interceptor for Dio that removes any key-value pairs with null values
/// from the request body (`options.data`) before the request is sent.
///
/// This is useful for APIs that do not accept null values in JSON payloads.
///
/// How it works:
/// - If the request data (`options.data`) is not null:
///   - If the data object has a `toJson()` method that returns a `Map<String, dynamic>`,
///     it calls `toJson()`, removes all null values recursively, and sets the cleaned map as the new data.
///   - If the data is already a `Map<String, dynamic>`, it removes all null values recursively.
/// - The cleaning is recursive: if a value is a nested map, it also removes nulls from that map.
class RemoveNullsInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final data = options.data;

    // Only process if data is not null
    if (data != null) {
      // If the data object has a toJson() method returning a Map<String, dynamic>
      if (_canCallToJson(data)) {
        final json = (data as dynamic).toJson();
        options.data = _removeNullsFromMap(json);
      }
      // If the data is already a Map<String, dynamic>
      else if (data is Map<String, dynamic>) {
        options.data = _removeNullsFromMap(data);
      }
    }
    // Continue with the request
    super.onRequest(options, handler);
  }

  /// Recursively removes all key-value pairs from [map] where the value is null.
  /// If a value is a nested map, it also removes nulls from that map.
  Map<String, dynamic> _removeNullsFromMap(Map<String, dynamic> map) {
    return Map.fromEntries(
      map.entries.where((entry) => entry.value != null).map((e) {
        // If the value is a Map, recursively clean it
        if (e.value is Map<String, dynamic>) {
          return MapEntry(
            e.key,
            _removeNullsFromMap(e.value as Map<String, dynamic>),
          );
        }
        return e;
      }),
    );
  }

  /// Checks if [obj] has a `toJson()` method that returns a `Map<String, dynamic>`.
  bool _canCallToJson(Object? obj) {
    try {
      final result = (obj as dynamic).toJson();
      return result is Map<String, dynamic>;
    } catch (_) {
      return false;
    }
  }
}

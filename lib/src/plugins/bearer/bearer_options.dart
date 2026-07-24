import "package:freezed_annotation/freezed_annotation.dart";

part "bearer_options.freezed.dart";
part "bearer_options.g.dart";

@freezed
abstract class BearerOptions with _$BearerOptions {
  const factory BearerOptions({@Default(false) bool requireSignature}) =
      _BearerOptions;
  const BearerOptions._();

  factory BearerOptions.fromJson(Map<String, dynamic> json) =>
      _$BearerOptionsFromJson(json);
}

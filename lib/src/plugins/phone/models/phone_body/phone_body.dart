import "package:freezed_annotation/freezed_annotation.dart";

part "phone_body.freezed.dart";
part "phone_body.g.dart";

@freezed
abstract class PhoneBody with _$PhoneBody {
  const factory PhoneBody({required String phoneNumber}) = _PhoneBody;

  factory PhoneBody.fromJson(Map<String, dynamic> json) =>
      _$PhoneBodyFromJson(json);
}

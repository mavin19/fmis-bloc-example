import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  @JsonKey(name: 'country_code')
  final String countryCode;
  final String phone;

  LoginModel(this.phone, this.countryCode);


  factory LoginModel.fromJSON(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
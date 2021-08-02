

import 'package:fmis_portal/Model/index.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_res_body.g.dart';
@JsonSerializable(createToJson: true)
class LoginResBody {
  _Data data;

  LoginResBody(this.data);
  factory LoginResBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResBodyFromJson(json);
}

@JsonSerializable(createToJson: true)
class _Data {
  UserModel user;
  String token;

  _Data(this.user, this.token);

  factory _Data.fromJson(Map<String, dynamic> json) =>
      _$_DataFromJson(json);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_res_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResBody _$LoginResBodyFromJson(Map<String, dynamic> json) {
  return LoginResBody(
    _Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginResBodyToJson(LoginResBody instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_Data _$_DataFromJson(Map<String, dynamic> json) {
  return _Data(
    UserModel.fromJson(json['user'] as Map<String, dynamic>),
    json['token'] as String,
  );
}

Map<String, dynamic> _$_DataToJson(_Data instance) => <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

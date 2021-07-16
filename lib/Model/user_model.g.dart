// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    name: json['name'] as String?,
    age: json['age'] as int?,
    company: json['company'] as String?,
    email: json['email'] as String?,
    gender: json['gender'] as String?,
    phone: json['phone'] as String?,
    picture: json['picture'] as String?,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'picture': instance.picture,
      'gender': instance.gender,
      'age': instance.age,
      'email': instance.email,
      'phone': instance.phone,
      'company': instance.company,
    };

import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String? name;
  String? picture;
  String? gender;
  int? age;
  String? email;
  String? phone;
  String? company;

  UserModel({
    this.name,
    this.age,
    this.company,
    this.email,
    this.gender,
    this.phone,
    this.picture,
  });

  //mapping json data
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

// ignore_for_file: non_constant_identifier_names, unnecessary_new, prefer_collection_literals, unnecessary_this, prefer_void_to_null

import 'package:uik/domain/models/auth_models/role.dart';

class Data {
  User? user;
  String? token;
  Role? role;

  Data({this.user, this.token, this.role});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
    role = json['role'] != null ? new Role.fromJson(json['role']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    if (this.role != null) {
      data['role'] = this.role!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? userTag;
  String? phone;
  Null verificationCode;
  String?password;
  String?password_confirmation;
  String? phoneVerifiedAt;
  int? rememberMe;
  int? cityId;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.firstName,
      this.middleName,
      this.lastName,
      this.userTag,
      this.phone,
      this.verificationCode,
      this.password,
      this.password_confirmation,
      this.phoneVerifiedAt,
      this.rememberMe,
      this.cityId,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    password = json['password'];
    password_confirmation = json['password_confirmation'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
    lastName = json['last_name'];
    userTag = json['user_tag'];
    phone = json['phone'];
    verificationCode = json['verification_code'];
    phoneVerifiedAt = json['phone_verified_at'];
    rememberMe = json['remember_me'];
    cityId = json['city_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['password'] = this.password;
    data['password_confirmation'] = this.password_confirmation;
    data['first_name'] = this.firstName;
    data['middle_name'] = this.middleName;
    data['last_name'] = this.lastName;
    data['user_tag'] = this.userTag;
    data['phone'] = this.phone;
    data['verification_code'] = this.verificationCode;
    data['phone_verified_at'] = this.phoneVerifiedAt;
    data['remember_me'] = this.rememberMe;
    data['city_id'] = this.cityId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
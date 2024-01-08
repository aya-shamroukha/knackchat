// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

import 'package:flutter/foundation.dart';

class GetTeacherFollowedModel {
  List<Data>? data;
  String? message;
  GetTeacherFollowedModel({
    this.data,
    this.message,
  });


  GetTeacherFollowedModel copyWith({
    List<Data>? data,
    String? message,
  }) {
    return GetTeacherFollowedModel(
      data: data ?? this.data,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data?.map((x) => x.toMap()).toList(),
      'message': message,
    };
  }

  factory GetTeacherFollowedModel.fromMap(Map<String, dynamic> map) {
    return GetTeacherFollowedModel(
      data: map['data'] != null ? List<Data>.from((map['data'] as List<int>).map<Data?>((x) => Data.fromMap(x as Map<String,dynamic>),),) : null,
      message: map['message'] != null ? map['message'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory GetTeacherFollowedModel.fromJson(String source) => GetTeacherFollowedModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'GetTeacherFollowedModel(data: $data, message: $message)';

  @override
  bool operator ==(covariant GetTeacherFollowedModel other) {
    if (identical(this, other)) return true;
  
    return 
      listEquals(other.data, data) &&
      other.message == message;
  }

  @override
  int get hashCode => data.hashCode ^ message.hashCode;
}

class Data {
  int? id;
  String? about;
  int? is_approved;
  int? user_id;
  int? speciality_id;
  String? created_at;
  String? updated_at;
  bool? is_followed;
  User? user;
  Data({
    this.id,
    this.about,
    this.is_approved,
    this.user_id,
    this.speciality_id,
    this.created_at,
    this.updated_at,
    this.is_followed,
    this.user,
  });

  Data copyWith({
    int? id,
    String? about,
    int? is_approved,
    int? user_id,
    int? speciality_id,
    String? created_at,
    String? updated_at,
    bool? is_followed,
    User? user,
  }) {
    return Data(
      id: id ?? this.id,
      about: about ?? this.about,
      is_approved: is_approved ?? this.is_approved,
      user_id: user_id ?? this.user_id,
      speciality_id: speciality_id ?? this.speciality_id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      is_followed: is_followed ?? this.is_followed,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'about': about,
      'is_approved': is_approved,
      'user_id': user_id,
      'speciality_id': speciality_id,
      'created_at': created_at,
      'updated_at': updated_at,
      'is_followed': is_followed,
      'user': user?.toMap(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      id: map['id'] != null ? map['id'] as int : null,
      about: map['about'] != null ? map['about'] as String : null,
      is_approved: map['is_approved'] != null ? map['is_approved'] as int : null,
      user_id: map['user_id'] != null ? map['user_id'] as int : null,
      speciality_id: map['speciality_id'] != null ? map['speciality_id'] as int : null,
      created_at: map['created_at'] != null ? map['created_at'] as String : null,
      updated_at: map['updated_at'] != null ? map['updated_at'] as String : null,
      is_followed: map['is_followed'] != null ? map['is_followed'] as bool : null,
      user: map['user'] != null ? User.fromMap(map['user'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Data(id: $id, about: $about, is_approved: $is_approved, user_id: $user_id, speciality_id: $speciality_id, created_at: $created_at, updated_at: $updated_at, is_followed: $is_followed, user: $user)';
  }

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.about == about &&
      other.is_approved == is_approved &&
      other.user_id == user_id &&
      other.speciality_id == speciality_id &&
      other.created_at == created_at &&
      other.updated_at == updated_at &&
      other.is_followed == is_followed &&
      other.user == user;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      about.hashCode ^
      is_approved.hashCode ^
      user_id.hashCode ^
      speciality_id.hashCode ^
      created_at.hashCode ^
      updated_at.hashCode ^
      is_followed.hashCode ^
      user.hashCode;
  }
}

class User {
  int? id;
  String? first_name;
  String? middle_name;
  String? last_name;
  String? user_tag;
  String? phone;
  String? phone_verified_at;
  int? remember_me;
  int? city_id;
  String? created_at;
  User({
    this.id,
    this.first_name,
    this.middle_name,
    this.last_name,
    this.user_tag,
    this.phone,
    this.phone_verified_at,
    this.remember_me,
    this.city_id,
    this.created_at,
  });

  User copyWith({
    int? id,
    String? first_name,
    String? middle_name,
    String? last_name,
    String? user_tag,
    String? phone,
    String? phone_verified_at,
    int? remember_me,
    int? city_id,
    String? created_at,
  }) {
    return User(
      id: id ?? this.id,
      first_name: first_name ?? this.first_name,
      middle_name: middle_name ?? this.middle_name,
      last_name: last_name ?? this.last_name,
      user_tag: user_tag ?? this.user_tag,
      phone: phone ?? this.phone,
      phone_verified_at: phone_verified_at ?? this.phone_verified_at,
      remember_me: remember_me ?? this.remember_me,
      city_id: city_id ?? this.city_id,
      created_at: created_at ?? this.created_at,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'first_name': first_name,
      'middle_name': middle_name,
      'last_name': last_name,
      'user_tag': user_tag,
      'phone': phone,
      'phone_verified_at': phone_verified_at,
      'remember_me': remember_me,
      'city_id': city_id,
      'created_at': created_at,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] != null ? map['id'] as int : null,
      first_name: map['first_name'] != null ? map['first_name'] as String : null,
      middle_name: map['middle_name'] != null ? map['middle_name'] as String : null,
      last_name: map['last_name'] != null ? map['last_name'] as String : null,
      user_tag: map['user_tag'] != null ? map['user_tag'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      phone_verified_at: map['phone_verified_at'] != null ? map['phone_verified_at'] as String : null,
      remember_me: map['remember_me'] != null ? map['remember_me'] as int : null,
      city_id: map['city_id'] != null ? map['city_id'] as int : null,
      created_at: map['created_at'] != null ? map['created_at'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, first_name: $first_name, middle_name: $middle_name, last_name: $last_name, user_tag: $user_tag, phone: $phone, phone_verified_at: $phone_verified_at, remember_me: $remember_me, city_id: $city_id, created_at: $created_at)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.first_name == first_name &&
      other.middle_name == middle_name &&
      other.last_name == last_name &&
      other.user_tag == user_tag &&
      other.phone == phone &&
      other.phone_verified_at == phone_verified_at &&
      other.remember_me == remember_me &&
      other.city_id == city_id &&
      other.created_at == created_at;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      first_name.hashCode ^
      middle_name.hashCode ^
      last_name.hashCode ^
      user_tag.hashCode ^
      phone.hashCode ^
      phone_verified_at.hashCode ^
      remember_me.hashCode ^
      city_id.hashCode ^
      created_at.hashCode;
  }
  String? updated_at;}

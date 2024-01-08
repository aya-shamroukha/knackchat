// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

import 'package:flutter/foundation.dart';

// ignore_for_file: unnecessary_this


class CreateUserModelRequset {
 final String first_name;
 final String last_name;
 final String user_tag;
 final String phone;
 final String password;
 final String password_confirmation;
 final int remember_me;
 final int city_id;
  final List<String> speciality_id;
  CreateUserModelRequset({
    required this.first_name,
    required this.last_name,
    required this.user_tag,
    required this.phone,
    required this.password,
    required this.password_confirmation,
    required this.remember_me,
    required this.city_id,
    required this.speciality_id,
  });

  CreateUserModelRequset copyWith({
    String? first_name,
    String? last_name,
    String? user_tag,
    String? phone,
    String? password,
    String? password_confirmation,
    int? remember_me,
    int? city_id,
    List<String>? speciality_id,
  }) {
    return CreateUserModelRequset(
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      user_tag: user_tag ?? this.user_tag,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      password_confirmation: password_confirmation ?? this.password_confirmation,
      remember_me: remember_me ?? this.remember_me,
      city_id: city_id ?? this.city_id,
      speciality_id: speciality_id ?? this.speciality_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first_name': first_name,
      'last_name': last_name,
      'user_tag': user_tag,
      'phone': phone,
      'password': password,
      'password_confirmation': password_confirmation,
      'remember_me': remember_me,
      'city_id': city_id,
      'speciality_id': speciality_id,
    };
  }

  factory CreateUserModelRequset.fromMap(Map<String, dynamic> map) {
    return CreateUserModelRequset(
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      user_tag: map['user_tag'] as String,
      phone: map['phone'] as String,
      password: map['password'] as String,
      password_confirmation: map['password_confirmation'] as String,
      remember_me: map['remember_me'] as int,
      city_id: map['city_id'] as int,
      speciality_id: List<String>.from((map['speciality_id'] as List<String>),)
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateUserModelRequset.fromJson(String source) => CreateUserModelRequset.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CreateUserModelRequset(first_name: $first_name, last_name: $last_name, user_tag: $user_tag, phone: $phone, password: $password, password_confirmation: $password_confirmation, remember_me: $remember_me, city_id: $city_id, speciality_id: $speciality_id)';
  }

  @override
  bool operator ==(covariant CreateUserModelRequset other) {
    if (identical(this, other)) return true;
  
    return 
      other.first_name == first_name &&
      other.last_name == last_name &&
      other.user_tag == user_tag &&
      other.phone == phone &&
      other.password == password &&
      other.password_confirmation == password_confirmation &&
      other.remember_me == remember_me &&
      other.city_id == city_id &&
      listEquals(other.speciality_id, speciality_id);
  }

  @override
  int get hashCode {
    return first_name.hashCode ^
      last_name.hashCode ^
      user_tag.hashCode ^
      phone.hashCode ^
      password.hashCode ^
      password_confirmation.hashCode ^
      remember_me.hashCode ^
      city_id.hashCode ^
      speciality_id.hashCode;
  }
}

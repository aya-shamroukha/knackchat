// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class SearchTeacherModel {
  final int id;
 final String about;
 final int is_approved;
 final int user_id;
  final int speciality_id;
 final String created_at;
 final String updated_at;
  final User user;
  SearchTeacherModel({
    required this.id,
    required this.about,
    required this.is_approved,
    required this.user_id,
    required this.speciality_id,
    required this.created_at,
    required this.updated_at,
    required this.user,
  });
  

  SearchTeacherModel copyWith({
    int? id,
    String? about,
    int? is_approved,
    int? user_id,
    int? speciality_id,
    String? created_at,
    String? updated_at,
    User? user,
  }) {
    return SearchTeacherModel(
      id: id ?? this.id,
      about: about ?? this.about,
      is_approved: is_approved ?? this.is_approved,
      user_id: user_id ?? this.user_id,
      speciality_id: speciality_id ?? this.speciality_id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
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
      'user': user.toMap(),
    };
  }

  factory SearchTeacherModel.fromMap(Map<String, dynamic> map) {
    return SearchTeacherModel(
      id: map['id'] as int,
      about: map['about'] as String,
      is_approved: map['is_approved'] as int,
      user_id: map['user_id'] as int,
      speciality_id: map['speciality_id'] as int,
      created_at: map['created_at'] as String,
      updated_at: map['updated_at'] as String,
      user: User.fromMap(map['user'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchTeacherModel.fromJson(String source) => SearchTeacherModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SearchTeacherModel(id: $id, about: $about, is_approved: $is_approved, user_id: $user_id, speciality_id: $speciality_id, created_at: $created_at, updated_at: $updated_at, user: $user)';
  }

  @override
  bool operator ==(covariant SearchTeacherModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.about == about &&
      other.is_approved == is_approved &&
      other.user_id == user_id &&
      other.speciality_id == speciality_id &&
      other.created_at == created_at &&
      other.updated_at == updated_at &&
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
      user.hashCode;
  }
  }

class User {
  final int id;
 final String first_name;
 final String middle_name;
 final String last_name;
 final String user_tag;
 final String phone;
 final String phone_verified_at;
 final int remember_me;
  final int city_id;
  User({
    required this.id,
    required this.first_name,
    required this.middle_name,
    required this.last_name,
    required this.user_tag,
    required this.phone,
    required this.phone_verified_at,
    required this.remember_me,
    required this.city_id,
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
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      first_name: map['first_name'] as String,
      middle_name: map['middle_name'] as String,
      last_name: map['last_name'] as String,
      user_tag: map['user_tag'] as String,
      phone: map['phone'] as String,
      phone_verified_at: map['phone_verified_at'] as String,
      remember_me: map['remember_me'] as int,
      city_id: map['city_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, first_name: $first_name, middle_name: $middle_name, last_name: $last_name, user_tag: $user_tag, phone: $phone, phone_verified_at: $phone_verified_at, remember_me: $remember_me, city_id: $city_id)';
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
      other.city_id == city_id;
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
      city_id.hashCode;
  }
  }

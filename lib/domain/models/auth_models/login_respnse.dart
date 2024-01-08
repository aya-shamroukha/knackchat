// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class LoginModel {
  final String access_token;
 final User  user;
  LoginModel({
    required this.access_token,
    required this.user,
  });

  LoginModel copyWith({
    String? access_token,
    User? user,
  }) {
    return LoginModel(
      access_token: access_token ?? this.access_token,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': access_token,
      'user': user.toMap(),
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      access_token: map['access_token'] as String,
      user: User.fromMap(map['user'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) => LoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginModel(access_token: $access_token, user: $user)';

  @override
  bool operator ==(covariant LoginModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.access_token == access_token &&
      other.user == user;
  }

  @override
  int get hashCode => access_token.hashCode ^ user.hashCode;
}
 
 
class User {
 final  int  id;
 final String first_name;
 final String last_name;
  final String middle_name;

 final String user_tag;
 final String phone;
 final String phone_verified_at;
 final int remember_me;
 final String created_at;
 final String updated_at;
  User({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.middle_name,
    required this.user_tag,
    required this.phone,
    required this.phone_verified_at,
    required this.remember_me,
    required this.created_at,
    required this.updated_at,
  });

  User copyWith({
    int? id,
    String? first_name,
    String? last_name,
    String? middle_name,
    String? user_tag,
    String? phone,
    String? phone_verified_at,
    int? remember_me,
    String? created_at,
    String? updated_at,
  }) {
    return User(
      id: id ?? this.id,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      middle_name: middle_name ?? this.middle_name,
      user_tag: user_tag ?? this.user_tag,
      phone: phone ?? this.phone,
      phone_verified_at: phone_verified_at ?? this.phone_verified_at,
      remember_me: remember_me ?? this.remember_me,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'first_name': first_name,
      'last_name': last_name,
      'middle_name': middle_name,
      'user_tag': user_tag,
      'phone': phone,
      'phone_verified_at': phone_verified_at,
      'remember_me': remember_me,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      middle_name: map['middle_name'] as String,
      user_tag: map['user_tag'] as String,
      phone: map['phone'] as String,
      phone_verified_at: map['phone_verified_at'] as String,
      remember_me: map['remember_me'] as int,
      created_at: map['created_at'] as String,
      updated_at: map['updated_at'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, first_name: $first_name, last_name: $last_name, middle_name: $middle_name, user_tag: $user_tag, phone: $phone, phone_verified_at: $phone_verified_at, remember_me: $remember_me, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.first_name == first_name &&
      other.last_name == last_name &&
      other.middle_name == middle_name &&
      other.user_tag == user_tag &&
      other.phone == phone &&
      other.phone_verified_at == phone_verified_at &&
      other.remember_me == remember_me &&
      other.created_at == created_at &&
      other.updated_at == updated_at;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      first_name.hashCode ^
      last_name.hashCode ^
      middle_name.hashCode ^
      user_tag.hashCode ^
      phone.hashCode ^
      phone_verified_at.hashCode ^
      remember_me.hashCode ^
      created_at.hashCode ^
      updated_at.hashCode;
  }
}

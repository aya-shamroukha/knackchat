// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class GetMyProfileModel {

  final int id;
  final String first_name;
  final String last_name;
  final String middle_name;
  final String user_tag;
  final String phone;
  final int city_id;
  final int remember_me;
  GetMyProfileModel({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.middle_name,
    required this.user_tag,
    required this.phone,
    required this.city_id,
    required this.remember_me,
  });

  GetMyProfileModel copyWith({
    int? id,
    String? first_name,
    String? last_name,
    String? middle_name,
    String? user_tag,
    String? phone,
    int? city_id,
    int? remember_me,
  }) {
    return GetMyProfileModel(
      id: id ?? this.id,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      middle_name: middle_name ?? this.middle_name,
      user_tag: user_tag ?? this.user_tag,
      phone: phone ?? this.phone,
      city_id: city_id ?? this.city_id,
      remember_me: remember_me ?? this.remember_me,
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
      'city_id': city_id,
      'remember_me': remember_me,
    };
  }

  factory GetMyProfileModel.fromMap(Map<String, dynamic> map) {
    return GetMyProfileModel(
      id: map['id'] as int,
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      middle_name: map['middle_name'] as String,
      user_tag: map['user_tag'] as String,
      phone: map['phone'] as String,
      city_id: map['city_id'] as int,
      remember_me: map['remember_me'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory GetMyProfileModel.fromJson(String source) => GetMyProfileModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GetMyProfileModel(id: $id, first_name: $first_name, last_name: $last_name, middle_name: $middle_name, user_tag: $user_tag, phone: $phone, city_id: $city_id, remember_me: $remember_me)';
  }

  @override
  bool operator ==(covariant GetMyProfileModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.first_name == first_name &&
      other.last_name == last_name &&
      other.middle_name == middle_name &&
      other.user_tag == user_tag &&
      other.phone == phone &&
      other.city_id == city_id &&
      other.remember_me == remember_me;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      first_name.hashCode ^
      last_name.hashCode ^
      middle_name.hashCode ^
      user_tag.hashCode ^
      phone.hashCode ^
      city_id.hashCode ^
      remember_me.hashCode;
  }
}
 
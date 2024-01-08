// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AuthorModel {
  String about;
  bool is_approved;
  dynamic specialityModel;
  AuthorModel({
    required this.about,
    required this.is_approved,
    required this.specialityModel,
  });

  AuthorModel copyWith({
    String? about,
    bool? is_approved,
    dynamic specialityModel,
  }) {
    return AuthorModel(
      about: about ?? this.about,
      is_approved: is_approved ?? this.is_approved,
      specialityModel: specialityModel ?? this.specialityModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'about': about,
      'is_approved': is_approved,
      'specialityModel': specialityModel,
    };
  }

  factory AuthorModel.fromMap(Map<String, dynamic> map) {
    return AuthorModel(
      about: map['about'] as String,
      is_approved: map['is_approved'] as bool,
      specialityModel: map['specialityModel'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthorModel.fromJson(String source) =>
      AuthorModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AuthorModel(about: $about, is_approved: $is_approved, specialityModel: $specialityModel)';

  @override
  bool operator ==(covariant AuthorModel other) {
    if (identical(this, other)) return true;

    return other.about == about &&
        other.is_approved == is_approved &&
        other.specialityModel == specialityModel;
  }

  @override
  int get hashCode =>
      about.hashCode ^ is_approved.hashCode ^ specialityModel.hashCode;
}

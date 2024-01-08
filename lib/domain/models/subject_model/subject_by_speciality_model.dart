// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class SubjectBySpeacialityModel {
 final int id;
 final String subject;
 final int speciality_id;
  SubjectBySpeacialityModel({
    required this.id,
    required this.subject,
    required this.speciality_id,
  });
  

  SubjectBySpeacialityModel copyWith({
    int? id,
    String? subject,
    int? speciality_id,
  }) {
    return SubjectBySpeacialityModel(
      id: id ?? this.id,
      subject: subject ?? this.subject,
      speciality_id: speciality_id ?? this.speciality_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'subject': subject,
      'speciality_id': speciality_id,
    };
  }

  factory SubjectBySpeacialityModel.fromMap(Map<String, dynamic> map) {
    return SubjectBySpeacialityModel(
      id: map['id'] as int,
      subject: map['subject'] as String,
      speciality_id: map['speciality_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubjectBySpeacialityModel.fromJson(String source) => SubjectBySpeacialityModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SubjectBySpeacialityModel(id: $id, subject: $subject, speciality_id: $speciality_id)';

  @override
  bool operator ==(covariant SubjectBySpeacialityModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.subject == subject &&
      other.speciality_id == speciality_id;
  }

  @override
  int get hashCode => id.hashCode ^ subject.hashCode ^ speciality_id.hashCode;
}
 
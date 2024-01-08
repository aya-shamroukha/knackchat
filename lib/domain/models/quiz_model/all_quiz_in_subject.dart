// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

import 'package:flutter/foundation.dart';

class AllQuizInSubjectModel {
  final int id;
  final String quiz;
   final double rate;
   final int teacher_id;
   final int question_id;
   List<Questionn> question;
   List<Teacherr> teacher;
  AllQuizInSubjectModel({
    required this.id,
    required this.quiz,
    required this.rate,
    required this.teacher_id,
    required this.question_id,
    required this.question,
    required this.teacher,
  });

  AllQuizInSubjectModel copyWith({
    int? id,
    String? quiz,
    double? rate,
    int? teacher_id,
    int? question_id,
    List<Questionn>? question,
    List<Teacherr>? teacher,
  }) {
    return AllQuizInSubjectModel(
      id: id ?? this.id,
      quiz: quiz ?? this.quiz,
      rate: rate ?? this.rate,
      teacher_id: teacher_id ?? this.teacher_id,
      question_id: question_id ?? this.question_id,
      question: question ?? this.question,
      teacher: teacher ?? this.teacher,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'quiz': quiz,
      'rate': rate,
      'teacher_id': teacher_id,
      'question_id': question_id,
      'question': question.map((x) => x.toMap()).toList(),
      'teacher': teacher.map((x) => x.toMap()).toList(),
    };
  }

  factory AllQuizInSubjectModel.fromMap(Map<String, dynamic> map) {
    return AllQuizInSubjectModel(
      id: map['id'] as int,
      quiz: map['quiz'] as String,
      rate: map['rate'] as double,
      teacher_id: map['teacher_id'] as int,
      question_id: map['question_id'] as int,
      question: List<Questionn>.from((map['question'] as List<int>).map<Questionn>((x) => Questionn.fromMap(x as Map<String,dynamic>),),),
      teacher: List<Teacherr>.from((map['teacher'] as List<int>).map<Teacherr>((x) => Teacherr.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllQuizInSubjectModel.fromJson(String source) => AllQuizInSubjectModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AllQuizInSubjectModel(id: $id, quiz: $quiz, rate: $rate, teacher_id: $teacher_id, question_id: $question_id, question: $question, teacher: $teacher)';
  }

  @override
  bool operator ==(covariant AllQuizInSubjectModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.quiz == quiz &&
      other.rate == rate &&
      other.teacher_id == teacher_id &&
      other.question_id == question_id &&
      listEquals(other.question, question) &&
      listEquals(other.teacher, teacher);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      quiz.hashCode ^
      rate.hashCode ^
      teacher_id.hashCode ^
      question_id.hashCode ^
      question.hashCode ^
      teacher.hashCode;
  }
}



class Questionn {

  final int id;
  final String question;
   final int point;
    final int allowed_duration;
     final int is_reported;
      final int type;
  Questionn({
    required this.id,
    required this.question,
    required this.point,
    required this.allowed_duration,
    required this.is_reported,
    required this.type,
  });

  Questionn copyWith({
    int? id,
    String? question,
    int? point,
    int? allowed_duration,
    int? is_reported,
    int? type,
  }) {
    return Questionn(
      id: id ?? this.id,
      question: question ?? this.question,
      point: point ?? this.point,
      allowed_duration: allowed_duration ?? this.allowed_duration,
      is_reported: is_reported ?? this.is_reported,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'question': question,
      'point': point,
      'allowed_duration': allowed_duration,
      'is_reported': is_reported,
      'type': type,
    };
  }

  factory Questionn.fromMap(Map<String, dynamic> map) {
    return Questionn(
      id: map['id'] as int,
      question: map['question'] as String,
      point: map['point'] as int,
      allowed_duration: map['allowed_duration'] as int,
      is_reported: map['is_reported'] as int,
      type: map['type'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Questionn.fromJson(String source) => Questionn.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Questionn(id: $id, question: $question, point: $point, allowed_duration: $allowed_duration, is_reported: $is_reported, type: $type)';
  }

  @override
  bool operator ==(covariant Questionn other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.question == question &&
      other.point == point &&
      other.allowed_duration == allowed_duration &&
      other.is_reported == is_reported &&
      other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      question.hashCode ^
      point.hashCode ^
      allowed_duration.hashCode ^
      is_reported.hashCode ^
      type.hashCode;
  }
}
class Teacherr {
  final int id;
  final String about;
  final int is_approved;
   final int speciality_id;
  Teacherr({
    required this.id,
    required this.about,
    required this.is_approved,
    required this.speciality_id,
  });

  Teacherr copyWith({
    int? id,
    String? about,
    int? is_approved,
    int? speciality_id,
  }) {
    return Teacherr(
      id: id ?? this.id,
      about: about ?? this.about,
      is_approved: is_approved ?? this.is_approved,
      speciality_id: speciality_id ?? this.speciality_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'about': about,
      'is_approved': is_approved,
      'speciality_id': speciality_id,
    };
  }

  factory Teacherr.fromMap(Map<String, dynamic> map) {
    return Teacherr(
      id: map['id'] as int,
      about: map['about'] as String,
      is_approved: map['is_approved'] as int,
      speciality_id: map['speciality_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Teacherr.fromJson(String source) => Teacherr.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Teacherr(id: $id, about: $about, is_approved: $is_approved, speciality_id: $speciality_id)';
  }

  @override
  bool operator ==(covariant Teacherr other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.about == about &&
      other.is_approved == is_approved &&
      other.speciality_id == speciality_id;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      about.hashCode ^
      is_approved.hashCode ^
      speciality_id.hashCode;
  }
}

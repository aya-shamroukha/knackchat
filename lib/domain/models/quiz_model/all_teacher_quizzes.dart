// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';
class QuizTeacher {
  final int id;
 final int teacher_id;
 final int question_id;
  final String updated_at;
  final String created_at;
 final double rate;
 final String quiz;
  QuizTeacher({
    required this.id,
    required this.teacher_id,
    required this.question_id,
    required this.updated_at,
    required this.created_at,
    required this.rate,
    required this.quiz,
  });

  QuizTeacher copyWith({
    int? id,
    int? teacher_id,
    int? question_id,
    String? updated_at,
    String? created_at,
    double? rate,
    String? quiz,
  }) {
    return QuizTeacher(
      id: id ?? this.id,
      teacher_id: teacher_id ?? this.teacher_id,
      question_id: question_id ?? this.question_id,
      updated_at: updated_at ?? this.updated_at,
      created_at: created_at ?? this.created_at,
      rate: rate ?? this.rate,
      quiz: quiz ?? this.quiz,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'teacher_id': teacher_id,
      'question_id': question_id,
      'updated_at': updated_at,
      'created_at': created_at,
      'rate': rate,
      'quiz': quiz,
    };
  }

  factory QuizTeacher.fromMap(Map<String, dynamic> map) {
    return QuizTeacher(
      id: map['id'] as int,
      teacher_id: map['teacher_id'] as int,
      question_id: map['question_id'] as int,
      updated_at: map['updated_at'] as String,
      created_at: map['created_at'] as String,
      rate: map['rate'] as double,
      quiz: map['quiz'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizTeacher.fromJson(String source) => QuizTeacher.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'QuizTeacher(id: $id, teacher_id: $teacher_id, question_id: $question_id, updated_at: $updated_at, created_at: $created_at, rate: $rate, quiz: $quiz)';
  }

  @override
  bool operator ==(covariant QuizTeacher other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.teacher_id == teacher_id &&
      other.question_id == question_id &&
      other.updated_at == updated_at &&
      other.created_at == created_at &&
      other.rate == rate &&
      other.quiz == quiz;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      teacher_id.hashCode ^
      question_id.hashCode ^
      updated_at.hashCode ^
      created_at.hashCode ^
      rate.hashCode ^
      quiz.hashCode;
  }
}
 
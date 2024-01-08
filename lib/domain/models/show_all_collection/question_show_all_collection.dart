// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class QuestionShowAllCollectionModel {
  int id;
  String question;
  int points;
  int allowedDuration;
  int isReported;
  int type;
  QuestionShowAllCollectionModel({
    required this.id,
    required this.question,
    required this.points,
    required this.allowedDuration,
    required this.isReported,
    required this.type,
  });

  QuestionShowAllCollectionModel copyWith({
    int? id,
    String? question,
    int? points,
    int? allowedDuration,
    int? isReported,
    int? type,
  }) {
    return QuestionShowAllCollectionModel(
      id: id ?? this.id,
      question: question ?? this.question,
      points: points ?? this.points,
      allowedDuration: allowedDuration ?? this.allowedDuration,
      isReported: isReported ?? this.isReported,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'question': question,
      'points': points,
      'allowedDuration': allowedDuration,
      'isReported': isReported,
      'type': type,
    };
  }

  factory QuestionShowAllCollectionModel.fromMap(Map<String, dynamic> map) {
    return QuestionShowAllCollectionModel(
      id: map['id'] as int,
      question: map['question'] as String,
      points: map['points'] as int,
      allowedDuration: map['allowedDuration'] as int,
      isReported: map['isReported'] as int,
      type: map['type'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionShowAllCollectionModel.fromJson(String source) => QuestionShowAllCollectionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'QuestionShowAllCollectionModel(id: $id, question: $question, points: $points, allowedDuration: $allowedDuration, isReported: $isReported, type: $type)';
  }

  @override
  bool operator ==(covariant QuestionShowAllCollectionModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.question == question &&
      other.points == points &&
      other.allowedDuration == allowedDuration &&
      other.isReported == isReported &&
      other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      question.hashCode ^
      points.hashCode ^
      allowedDuration.hashCode ^
      isReported.hashCode ^
      type.hashCode;
  }
}

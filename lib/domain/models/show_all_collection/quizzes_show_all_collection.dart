// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:uik/domain/models/show_all_collection/pivot_show_all_collection.dart';
import 'package:uik/domain/models/show_all_collection/question_show_all_collection.dart';

class QuizzesShowAllCollectionModel {
  int id;
  String quiz;
  int rate;
  int questionId;
  int teacherId;
  PivotShowAllCollectionModel pivot;
  QuestionShowAllCollectionModel question;
  QuizzesShowAllCollectionModel({
    required this.id,
    required this.quiz,
    required this.rate,
    required this.questionId,
    required this.teacherId,
    required this.pivot,
    required this.question,
  });

  QuizzesShowAllCollectionModel copyWith({
    int? id,
    String? quiz,
    int? rate,
    int? questionId,
    int? teacherId,
    PivotShowAllCollectionModel? pivot,
    QuestionShowAllCollectionModel? question,
  }) {
    return QuizzesShowAllCollectionModel(
      id: id ?? this.id,
      quiz: quiz ?? this.quiz,
      rate: rate ?? this.rate,
      questionId: questionId ?? this.questionId,
      teacherId: teacherId ?? this.teacherId,
      pivot: pivot ?? this.pivot,
      question: question ?? this.question,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'quiz': quiz,
      'rate': rate,
      'questionId': questionId,
      'teacherId': teacherId,
      'pivot': pivot.toMap(),
      'question': question.toMap(),
    };
  }

  factory QuizzesShowAllCollectionModel.fromMap(Map<String, dynamic> map) {
    return QuizzesShowAllCollectionModel(
      id: map['id'] as int,
      quiz: map['quiz'] as String,
      rate: map['rate'] as int,
      questionId: map['questionId'] as int,
      teacherId: map['teacherId'] as int,
      pivot: PivotShowAllCollectionModel.fromMap(map['pivot'] as Map<String,dynamic>),
      question: QuestionShowAllCollectionModel.fromMap(map['question'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizzesShowAllCollectionModel.fromJson(String source) => QuizzesShowAllCollectionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'QuizzesShowAllCollectionModel(id: $id, quiz: $quiz, rate: $rate, questionId: $questionId, teacherId: $teacherId, pivot: $pivot, question: $question)';
  }

  @override
  bool operator ==(covariant QuizzesShowAllCollectionModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.quiz == quiz &&
      other.rate == rate &&
      other.questionId == questionId &&
      other.teacherId == teacherId &&
      other.pivot == pivot &&
      other.question == question;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      quiz.hashCode ^
      rate.hashCode ^
      questionId.hashCode ^
      teacherId.hashCode ^
      pivot.hashCode ^
      question.hashCode;
  }
}

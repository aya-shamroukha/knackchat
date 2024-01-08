// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:uik/domain/model/old_model/is_correct.dart';

class QuizModel {
  Duration duration;
  String question;
  List<AnswersModel> answers;
  QuizModel({
    required this.duration,
    required this.question,
    required this.answers,
  });

  QuizModel copyWith({
    Duration? duration,
    String? question,
    List<AnswersModel>? answers,
  }) {
    return QuizModel(
      duration: duration ?? this.duration,
      question: question ?? this.question,
      answers: answers ?? this.answers,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'question': question,
      'answers': answers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      duration: map['duration'],
      question: map['question'] as String,
      answers: List<AnswersModel>.from(
        (map['answers'] as List<int>).map<AnswersModel>(
          (x) => AnswersModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'QuizModel(duration: $duration, question: $question, answers: $answers)';

  @override
  bool operator ==(covariant QuizModel other) {
    if (identical(this, other)) return true;

    return other.duration == duration &&
        other.question == question &&
        listEquals(other.answers, answers);
  }

  @override
  int get hashCode => duration.hashCode ^ question.hashCode ^ answers.hashCode;
}

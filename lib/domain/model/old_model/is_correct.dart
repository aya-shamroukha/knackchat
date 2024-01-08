import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AnswersModel {
  bool iscorrect;
  String answer_text;
  AnswersModel({
    required this.iscorrect,
    required this.answer_text,
  });

  AnswersModel copyWith({
    bool? iscorrect,
    String? answer_text,
  }) {
    return AnswersModel(
      iscorrect: iscorrect ?? this.iscorrect,
      answer_text: answer_text ?? this.answer_text,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iscorrect': iscorrect,
      'answer_text': answer_text,
    };
  }

  factory AnswersModel.fromMap(Map<String, dynamic> map) {
    return AnswersModel(
      iscorrect: map['iscorrect'] as bool,
      answer_text: map['answer_text'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswersModel.fromJson(String source) =>
      AnswersModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AnswersModel(iscorrect: $iscorrect, answer_text: $answer_text)';

  @override
  bool operator ==(covariant AnswersModel other) {
    if (identical(this, other)) return true;

    return other.iscorrect == iscorrect && other.answer_text == answer_text;
  }

  @override
  int get hashCode => iscorrect.hashCode ^ answer_text.hashCode;
}

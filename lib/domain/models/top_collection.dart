// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class TopCollectionModel {
  int id;
  String collection;
  double rate;
  String tips;
  String teacher_id;
  TopCollectionModel({
    required this.id,
    required this.collection,
    required this.rate,
    required this.tips,
    required this.teacher_id,
  });

  TopCollectionModel copyWith({
    int? id,
    String? collection,
    double? rate,
    String? tips,
    String? teacher_id,
  }) {
    return TopCollectionModel(
      id: id ?? this.id,
      collection: collection ?? this.collection,
      rate: rate ?? this.rate,
      tips: tips ?? this.tips,
      teacher_id: teacher_id ?? this.teacher_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'collection': collection,
      'rate': rate,
      'tips': tips,
      'teacher_id': teacher_id,
    };
  }

  factory TopCollectionModel.fromMap(Map<String, dynamic> map) {
    return TopCollectionModel(
      id: map['id'] as int,
      collection: map['collection'] as String,
      rate: map['rate'] as double,
      tips: map['tips'] as String,
      teacher_id: map['teacher_id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TopCollectionModel.fromJson(String source) => TopCollectionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TopCollectionModel(id: $id, collection: $collection, rate: $rate, tips: $tips, teacher_id: $teacher_id)';
  }

  @override
  bool operator ==(covariant TopCollectionModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.collection == collection &&
      other.rate == rate &&
      other.tips == tips &&
      other.teacher_id == teacher_id;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      collection.hashCode ^
      rate.hashCode ^
      tips.hashCode ^
      teacher_id.hashCode;
  }
}

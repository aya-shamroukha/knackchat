// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:uik/domain/models/show_all_collection/quizzes_show_all_collection.dart';

class DataShowAllCollectionModel {
  int id;
  String collection;
  int rate;
  String tips;
  String teacherId;
  QuizzesShowAllCollectionModel quizzes;
  DataShowAllCollectionModel({
    required this.id,
    required this.collection,
    required this.rate,
    required this.tips,
    required this.teacherId,
    required this.quizzes,
  });

  DataShowAllCollectionModel copyWith({
    int? id,
    String? collection,
    int? rate,
    String? tips,
    String? teacherId,
    QuizzesShowAllCollectionModel? quizzes,
  }) {
    return DataShowAllCollectionModel(
      id: id ?? this.id,
      collection: collection ?? this.collection,
      rate: rate ?? this.rate,
      tips: tips ?? this.tips,
      teacherId: teacherId ?? this.teacherId,
      quizzes: quizzes ?? this.quizzes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'collection': collection,
      'rate': rate,
      'tips': tips,
      'teacherId': teacherId,
      'quizzes': quizzes.toMap(),
    };
  }

  factory DataShowAllCollectionModel.fromMap(Map<String, dynamic> map) {
    return DataShowAllCollectionModel(
      id: map['id'] as int,
      collection: map['collection'] as String,
      rate: map['rate'] as int,
      tips: map['tips'] as String,
      teacherId: map['teacherId'] as String,
      quizzes: QuizzesShowAllCollectionModel.fromMap(map['quizzes'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory DataShowAllCollectionModel.fromJson(String source) => DataShowAllCollectionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DataShowAllCollectionModel(id: $id, collection: $collection, rate: $rate, tips: $tips, teacherId: $teacherId, quizzes: $quizzes)';
  }

  @override
  bool operator ==(covariant DataShowAllCollectionModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.collection == collection &&
      other.rate == rate &&
      other.tips == tips &&
      other.teacherId == teacherId &&
      other.quizzes == quizzes;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      collection.hashCode ^
      rate.hashCode ^
      tips.hashCode ^
      teacherId.hashCode ^
      quizzes.hashCode;
  }
}

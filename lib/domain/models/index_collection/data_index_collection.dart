// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:uik/domain/models/index_collection/subject_index_id.dart';

class DataIndexCollection {
  int id;
  String collection;
  int rate;
  String tips;
  String teacherId;
  SubjectIndexCollectionModel subjects;
  DataIndexCollection({
    required this.id,
    required this.collection,
    required this.rate,
    required this.tips,
    required this.teacherId,
    required this.subjects,
  });

  DataIndexCollection copyWith({
    int? id,
    String? collection,
    int? rate,
    String? tips,
    String? teacherId,
    SubjectIndexCollectionModel? subjects,
  }) {
    return DataIndexCollection(
      id: id ?? this.id,
      collection: collection ?? this.collection,
      rate: rate ?? this.rate,
      tips: tips ?? this.tips,
      teacherId: teacherId ?? this.teacherId,
      subjects: subjects ?? this.subjects,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'collection': collection,
      'rate': rate,
      'tips': tips,
      'teacherId': teacherId,
      'subjects': subjects.toMap(),
    };
  }

  factory DataIndexCollection.fromMap(Map<String, dynamic> map) {
    return DataIndexCollection(
      id: map['id'] as int,
      collection: map['collection'] as String,
      rate: map['rate'] as int,
      tips: map['tips'] as String,
      teacherId: map['teacherId'] as String,
      subjects: SubjectIndexCollectionModel.fromMap(map['subjects'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory DataIndexCollection.fromJson(String source) => DataIndexCollection.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'IndexCollection(id: $id, collection: $collection, rate: $rate, tips: $tips, teacherId: $teacherId, subjects: $subjects)';
  }

  @override
  bool operator ==(covariant DataIndexCollection other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.collection == collection &&
      other.rate == rate &&
      other.tips == tips &&
      other.teacherId == teacherId &&
      other.subjects == subjects;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      collection.hashCode ^
      rate.hashCode ^
      tips.hashCode ^
      teacherId.hashCode ^
      subjects.hashCode;
  }
}

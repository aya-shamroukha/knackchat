// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:uik/domain/models/index_collection/pivot_index_collection.dart';

class SubjectIndexCollectionModel {
  int id;
  String subject;
  int specialityId;
  PivotIndexCollection pivot;
  SubjectIndexCollectionModel({
    required this.id,
    required this.subject,
    required this.specialityId,
    required this.pivot,
  });

  SubjectIndexCollectionModel copyWith({
    int? id,
    String? subject,
    int? specialityId,
    PivotIndexCollection? pivot,
  }) {
    return SubjectIndexCollectionModel(
      id: id ?? this.id,
      subject: subject ?? this.subject,
      specialityId: specialityId ?? this.specialityId,
      pivot: pivot ?? this.pivot,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'subject': subject,
      'specialityId': specialityId,
      'pivot': pivot.toMap(),
    };
  }

  factory SubjectIndexCollectionModel.fromMap(Map<String, dynamic> map) {
    return SubjectIndexCollectionModel(
      id: map['id'] as int,
      subject: map['subject'] as String,
      specialityId: map['specialityId'] as int,
      pivot: PivotIndexCollection.fromMap(map['pivot'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory SubjectIndexCollectionModel.fromJson(String source) => SubjectIndexCollectionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SubjectIndexCollectionModel(id: $id, subject: $subject, specialityId: $specialityId, pivot: $pivot)';
  }

  @override
  bool operator ==(covariant SubjectIndexCollectionModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.subject == subject &&
      other.specialityId == specialityId &&
      other.pivot == pivot;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      subject.hashCode ^
      specialityId.hashCode ^
      pivot.hashCode;
  }
}

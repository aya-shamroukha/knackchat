// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PivotIndexCollection {
  int collectionId;
  int subjectId;
  PivotIndexCollection({
    required this.collectionId,
    required this.subjectId,
  });
  

  PivotIndexCollection copyWith({
    int? collectionId,
    int? subjectId,
  }) {
    return PivotIndexCollection(
      collectionId: collectionId ?? this.collectionId,
      subjectId: subjectId ?? this.subjectId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'subjectId': subjectId,
    };
  }

  factory PivotIndexCollection.fromMap(Map<String, dynamic> map) {
    return PivotIndexCollection(
      collectionId: map['collectionId'] as int,
      subjectId: map['subjectId'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PivotIndexCollection.fromJson(String source) => PivotIndexCollection.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PivotIndexCollection(collectionId: $collectionId, subjectId: $subjectId)';

  @override
  bool operator ==(covariant PivotIndexCollection other) {
    if (identical(this, other)) return true;
  
    return 
      other.collectionId == collectionId &&
      other.subjectId == subjectId;
  }

  @override
  int get hashCode => collectionId.hashCode ^ subjectId.hashCode;
}

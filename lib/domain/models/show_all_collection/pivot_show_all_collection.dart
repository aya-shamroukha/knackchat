// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PivotShowAllCollectionModel {
  int collectionId;
  int quizId;
  PivotShowAllCollectionModel({
    required this.collectionId,
    required this.quizId,
  });

  PivotShowAllCollectionModel copyWith({
    int? collectionId,
    int? quizId,
  }) {
    return PivotShowAllCollectionModel(
      collectionId: collectionId ?? this.collectionId,
      quizId: quizId ?? this.quizId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'quizId': quizId,
    };
  }

  factory PivotShowAllCollectionModel.fromMap(Map<String, dynamic> map) {
    return PivotShowAllCollectionModel(
      collectionId: map['collectionId'] as int,
      quizId: map['quizId'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PivotShowAllCollectionModel.fromJson(String source) => PivotShowAllCollectionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PivotShowAllCollectionModel(collectionId: $collectionId, quizId: $quizId)';

  @override
  bool operator ==(covariant PivotShowAllCollectionModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.collectionId == collectionId &&
      other.quizId == quizId;
  }

  @override
  int get hashCode => collectionId.hashCode ^ quizId.hashCode;
}

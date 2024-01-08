// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:uik/domain/models/show_all_collection/data_show_all_collection.dart';

class ShowAllCollectionModel {
  DataShowAllCollectionModel data;
  String message;
  ShowAllCollectionModel({
    required this.data,
    required this.message,
  });

  ShowAllCollectionModel copyWith({
    DataShowAllCollectionModel? data,
    String? message,
  }) {
    return ShowAllCollectionModel(
      data: data ?? this.data,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data.toMap(),
      'message': message,
    };
  }

  factory ShowAllCollectionModel.fromMap(Map<String, dynamic> map) {
    return ShowAllCollectionModel(
      data: DataShowAllCollectionModel.fromMap(map['data'] as Map<String,dynamic>),
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShowAllCollectionModel.fromJson(String source) => ShowAllCollectionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ShowAllCollectionModel(data: $data, message: $message)';

  @override
  bool operator ==(covariant ShowAllCollectionModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.data == data &&
      other.message == message;
  }

  @override
  int get hashCode => data.hashCode ^ message.hashCode;
}

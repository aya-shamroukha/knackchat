// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UnFollowTeeacherModel {
  final String message;
  UnFollowTeeacherModel({
    required this.message,
  });

  UnFollowTeeacherModel copyWith({
    String? message,
  }) {
    return UnFollowTeeacherModel(
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory UnFollowTeeacherModel.fromMap(Map<String, dynamic> map) {
    return UnFollowTeeacherModel(
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UnFollowTeeacherModel.fromJson(String source) => UnFollowTeeacherModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UnFollowTeeacherModel(message: $message)';

  @override
  bool operator ==(covariant UnFollowTeeacherModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

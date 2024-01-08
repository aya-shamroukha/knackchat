// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FollowTeacher {
  final String message;
  FollowTeacher({
    required this.message,
  });

 

  FollowTeacher copyWith({
    String? message,
  }) {
    return FollowTeacher(
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory FollowTeacher.fromMap(Map<String, dynamic> map) {
    return FollowTeacher(
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FollowTeacher.fromJson(String source) => FollowTeacher.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FollowTeacher(message: $message)';

  @override
  bool operator ==(covariant FollowTeacher other) {
    if (identical(this, other)) return true;
  
    return 
      other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LogOutModel {
  final String message;
  LogOutModel({
    required this.message,
  });

  LogOutModel copyWith({
    String? message,
  }) {
    return LogOutModel(
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory LogOutModel.fromMap(Map<String, dynamic> map) {
    return LogOutModel(
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LogOutModel.fromJson(String source) => LogOutModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LogOutModel(message: $message)';

  @override
  bool operator ==(covariant LogOutModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

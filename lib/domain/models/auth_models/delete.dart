// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DeleteAccount {
  final String message;
  DeleteAccount({
    required this.message,
  });

  DeleteAccount copyWith({
    String? message,
  }) {
    return DeleteAccount(
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory DeleteAccount.fromMap(Map<String, dynamic> map) {
    return DeleteAccount(
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DeleteAccount.fromJson(String source) => DeleteAccount.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'DeleteAccount(message: $message)';

  @override
  bool operator ==(covariant DeleteAccount other) {
    if (identical(this, other)) return true;
  
    return 
      other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

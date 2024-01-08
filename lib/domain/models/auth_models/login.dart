// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class LoginRequsetModel {
  final String password;
  final String user_tag;
    LoginRequsetModel({
    required this.password,
    required this.user_tag,
  });

  LoginRequsetModel copyWith({
    String? password,
    String? user_tag,
  }) {
    return LoginRequsetModel(
      password: password ?? this.password,
      user_tag: user_tag ?? this.user_tag,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'user_tag': user_tag,
    };
  }

  factory LoginRequsetModel.fromMap(Map<String, dynamic> map) {
    return LoginRequsetModel(
      password: map['password'] as String,
      user_tag: map['user_tag'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginRequsetModel.fromJson(String source) => LoginRequsetModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginRequsetModel(password: $password, user_tag: $user_tag)';

  @override
  bool operator ==(covariant LoginRequsetModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.password == password &&
      other.user_tag == user_tag;
  }

  @override
  int get hashCode => password.hashCode ^ user_tag.hashCode;
}
 

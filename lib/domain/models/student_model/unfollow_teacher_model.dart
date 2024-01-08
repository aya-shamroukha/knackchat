// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this

class UnFollowTeacher {
  String? message;

  UnFollowTeacher({this.message});

  UnFollowTeacher.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    return data;
  }
}
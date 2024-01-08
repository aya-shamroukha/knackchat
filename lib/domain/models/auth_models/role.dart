// ignore_for_file: unnecessary_this

class Role {
  String? about;
  int? specialityId;
  int? userId;
  String? updatedAt;
  String? createdAt;
  int? id;

  Role(
      {this.about,
      this.specialityId,
      this.userId,
      this.updatedAt,
      this.createdAt,
      this.id});

  Role.fromJson(Map<String, dynamic> json) {
    about = json['about'];
    specialityId = json['student[speciality_id]'];
    userId = json['user_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['about'] = this.about;
    data['student[speciality_id]'] = this.specialityId;
    data['user_id'] = this.userId;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this

class Following {
  List<Data>? data;
  String? message;

  Following({this.data, this.message});

  Following.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? id;
  String? about;
  int? isApproved;
  int? userId;
  int? specialityId;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;
  User? user;

  Data(
      {this.id,
      this.about,
      this.isApproved,
      this.userId,
      this.specialityId,
      this.createdAt,
      this.updatedAt,
      this.pivot,
      this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    about = json['about'];
    isApproved = json['is_approved'];
    userId = json['user_id'];
    specialityId = json['speciality_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['about'] = this.about;
    data['is_approved'] = this.isApproved;
    data['user_id'] = this.userId;
    data['speciality_id'] = this.specialityId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class Pivot {
  int? studentId;
  int? teacherId;
  String? createdAt;
  String? updatedAt;

  Pivot({this.studentId, this.teacherId, this.createdAt, this.updatedAt});

  Pivot.fromJson(Map<String, dynamic> json) {
    studentId = json['student_id'];
    teacherId = json['teacher_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['student_id'] = this.studentId;
    data['teacher_id'] = this.teacherId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class User {
  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? userTag;
  String? phone;
  Null verificationCode;
  String? phoneVerifiedAt;
  int? rememberMe;
  int? cityId;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.firstName,
      this.middleName,
      this.lastName,
      this.userTag,
      this.phone,
      this.verificationCode,
      this.phoneVerifiedAt,
      this.rememberMe,
      this.cityId,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
    lastName = json['last_name'];
    userTag = json['user_tag'];
    phone = json['phone'];
    verificationCode = json['verification_code'];
    phoneVerifiedAt = json['phone_verified_at'];
    rememberMe = json['remember_me'];
    cityId = json['city_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['middle_name'] = this.middleName;
    data['last_name'] = this.lastName;
    data['user_tag'] = this.userTag;
    data['phone'] = this.phone;
    data['verification_code'] = this.verificationCode;
    data['phone_verified_at'] = this.phoneVerifiedAt;
    data['remember_me'] = this.rememberMe;
    data['city_id'] = this.cityId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
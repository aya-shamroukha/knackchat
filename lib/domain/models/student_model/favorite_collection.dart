// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

class FavoriteCollcetion {
  List<Data>? data;
  String? message;

  FavoriteCollcetion({this.data, this.message});

  FavoriteCollcetion.fromJson(Map<String, dynamic> json) {
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
  String? collection;
  double? rate;
  String? tips;
  int? teacherId;
  String? createdAt;
  String? updatedAt;
  List<Quizzes>? quizzes;
  List<Subjects>? subjects;

  Data(
      {this.id,
      this.collection,
      this.rate,
      this.tips,
      this.teacherId,
      this.createdAt,
      this.updatedAt,
      this.quizzes,
      this.subjects});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    collection = json['collection'];
    rate = json['rate'];
    tips = json['tips'];
    teacherId = json['teacher_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['quizzes'] != null) {
      quizzes = <Quizzes>[];
      json['quizzes'].forEach((v) {
        quizzes!.add(new Quizzes.fromJson(v));
      });
    }
    if (json['subjects'] != null) {
      subjects = <Subjects>[];
      json['subjects'].forEach((v) {
        subjects!.add(new Subjects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['collection'] = this.collection;
    data['rate'] = this.rate;
    data['tips'] = this.tips;
    data['teacher_id'] = this.teacherId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.quizzes != null) {
      data['quizzes'] = this.quizzes!.map((v) => v.toJson()).toList();
    }
    if (this.subjects != null) {
      data['subjects'] = this.subjects!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Quizzes {
  int? id;
  String? quiz;
  double? rate;
  int? questionId;
  int? teacherId;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;
  Question? question;

  Quizzes(
      {this.id,
      this.quiz,
      this.rate,
      this.questionId,
      this.teacherId,
      this.createdAt,
      this.updatedAt,
      this.pivot,
      this.question});

  Quizzes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quiz = json['quiz'];
    rate = json['rate'];
    questionId = json['question_id'];
    teacherId = json['teacher_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
    question = json['question'] != null
        ? new Question.fromJson(json['question'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quiz'] = this.quiz;
    data['rate'] = this.rate;
    data['question_id'] = this.questionId;
    data['teacher_id'] = this.teacherId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    if (this.question != null) {
      data['question'] = this.question!.toJson();
    }
    return data;
  }
}

class Pivot {
  int? collectionId;
  int? quizId;

  Pivot({this.collectionId, this.quizId});

  Pivot.fromJson(Map<String, dynamic> json) {
    collectionId = json['collection_id'];
    quizId = json['quiz_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['collection_id'] = this.collectionId;
    data['quiz_id'] = this.quizId;
    return data;
  }
}

class Question {
  int? id;
  String? question;
  int? point;
  int? allowedDuration;
  int? isReported;
  String? createdAt;
  String? updatedAt;
  int? type;

  Question(
      {this.id,
      this.question,
      this.point,
      this.allowedDuration,
      this.isReported,
      this.createdAt,
      this.updatedAt,
      this.type});

  Question.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    point = json['point'];
    allowedDuration = json['allowed_duration'];
    isReported = json['is_reported'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['point'] = this.point;
    data['allowed_duration'] = this.allowedDuration;
    data['is_reported'] = this.isReported;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['type'] = this.type;
    return data;
  }
}

class Subjects {
  int? id;
  String? subject;
  int? specialityId;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;

  Subjects(
      {this.id,
      this.subject,
      this.specialityId,
      this.createdAt,
      this.updatedAt,
      this.pivot});

  Subjects.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subject = json['subject'];
    specialityId = json['speciality_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['subject'] = this.subject;
    data['speciality_id'] = this.specialityId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Pivott {
  int? collectionId;
  int? subjectId;

  Pivott({this.collectionId, this.subjectId});

  Pivott.fromJson(Map<String, dynamic> json) {
    collectionId = json['collection_id'];
    subjectId = json['subject_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['collection_id'] = this.collectionId;
    data['subject_id'] = this.subjectId;
    return data;
  }
}
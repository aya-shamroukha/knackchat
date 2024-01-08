// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

class FavoriteQuiz {
  List<Data>? data;
  String? message;

  FavoriteQuiz({this.data, this.message});

  FavoriteQuiz.fromJson(Map<String, dynamic> json) {
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
  String? quiz;
  double? rate;
  int? questionId;
  int? teacherId;
  String? createdAt;
  String? updatedAt;
  Question? question;

  Data(
      {this.id,
      this.quiz,
      this.rate,
      this.questionId,
      this.teacherId,
      this.createdAt,
      this.updatedAt,
      this.question});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quiz = json['quiz'];
    rate = json['rate'];
    questionId = json['question_id'];
    teacherId = json['teacher_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
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
    if (this.question != null) {
      data['question'] = this.question!.toJson();
    }
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
  List<Order>? order;
  List<MultipleChoice>? multipleChoice;

  Question(
      {this.id,
      this.question,
      this.point,
      this.allowedDuration,
      this.isReported,
      this.createdAt,
      this.updatedAt,
      this.type,
      this.order,
      this.multipleChoice});

  Question.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    point = json['point'];
    allowedDuration = json['allowed_duration'];
    isReported = json['is_reported'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    type = json['type'];
    if (json['order'] != null) {
      order = <Order>[];
      json['order'].forEach((v) {
        order!.add(new Order.fromJson(v));
      });
    }
    if (json['multiple_choice'] != null) {
      multipleChoice = <MultipleChoice>[];
      json['multiple_choice'].forEach((v) {
        multipleChoice!.add(new MultipleChoice.fromJson(v));
      });
    }
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
    if (this.order != null) {
      data['order'] = this.order!.map((v) => v.toJson()).toList();
    }
    if (this.multipleChoice != null) {
      data['multiple_choice'] =
          this.multipleChoice!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Order {
  int? id;
  String? sentence;
  int? order;
  int? questionId;
  String? createdAt;
  String? updatedAt;

  Order(
      {this.id,
      this.sentence,
      this.order,
      this.questionId,
      this.createdAt,
      this.updatedAt});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sentence = json['sentence'];
    order = json['order'];
    questionId = json['question_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sentence'] = this.sentence;
    data['order'] = this.order;
    data['question_id'] = this.questionId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class MultipleChoice {
  int? id;
  String? choice;
  int? isCorrect;
  int? questionId;
  String? createdAt;
  String? updatedAt;

  MultipleChoice(
      {this.id,
      this.choice,
      this.isCorrect,
      this.questionId,
      this.createdAt,
      this.updatedAt});

  MultipleChoice.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    choice = json['choice'];
    isCorrect = json['is_correct'];
    questionId = json['question_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['choice'] = this.choice;
    data['is_correct'] = this.isCorrect;
    data['question_id'] = this.questionId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
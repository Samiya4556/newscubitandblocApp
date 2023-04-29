class NewsModels {
  bool? status;
  List<Data>? data;

  NewsModels({this.status, this.data});

  NewsModels.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? title;
  String? body;
  String? img;
  String? createdAt;

  Data({this.title, this.body, this.img, this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
    img = json['img'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['body'] = this.body;
    data['img'] = this.img;
    data['created_at'] = this.createdAt;
    return data;
  }
}
//BASE CLASS
class ResponseData {
  late List<Data> data;
  late Support support;
  ResponseData({
    required this.data,
    required this.support,
  });

  ResponseData.fromJson(Map<String, dynamic> json) {
    //data = json['data'] != null ? Data.fromJson(json['data']) : null;
    data = <Data>[];
    json['data'].forEach((v) {
      data.add(new Data.fromJson(v));
    });

    support = Support.fromJson(json['support']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> variable = Map<String, dynamic>();
    variable['data'] = this.data.map((v) => v.toJson()).toList();
    variable['support'] = this.support.toJson();

    return variable;
  }
}

//SUB CLASS
class Data {
  late num id;
  late String email;
  late String first_name;
  late String last_name;
  late String avatar;

  Data(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.email,
      required this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    first_name = json['first_name'];
    last_name = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['first_name'] = this.first_name;
    data['avatar'] = this.avatar;
    return data;
  }
}

class Support {
  String? url;
  String? text;
  Support({
    this.url,
    this.text,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = this.url;
    data['text'] = this.text;
    return data;
  }

  Support.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    text = json['text'];
  }
}

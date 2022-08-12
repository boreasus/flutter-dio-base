//BASE CLASS
class ResponseData {
  Data? data;
  Support? support;
  ResponseData({
    this.data,
    this.support,
  });

  ResponseData.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    support =
        json['support'] != null ? Support.fromJson(json['support']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> variable = Map<String, dynamic>();
    variable['data'] = this.data!.toJson();
    variable['support'] = this.support!.toJson();

    return variable;
  }
}

class Data {
  num? id;
  String? email;
  String? first_name;
  String? last_name;
  String? avatar;

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

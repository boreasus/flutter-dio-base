class Data {
  String? id;
  String? email;
  String? first_name;
  String? last_name;
  String? avatar;
  Data({this.id, this.email, this.first_name, this.last_name, this.avatar});
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json["id"],
      email: json["email"],
      first_name: json["first_name"],
      last_name: json["last_name"],
      avatar: json["avatar"],
    );
  }
}

class Support {
  String? url;
  String? text;
  Support({
    this.url,
    this.text,
  });
  factory Support.fromJson(Map<String, dynamic> json) {
    return Support(
      url: json["url"],
      text: json["text"],
    );
  }
}

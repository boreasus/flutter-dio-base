import 'Product.dart';

class ResponseData {
  Data? data;
  Support? support;
  ResponseData({
    this.data,
    this.support,
  });

  factory ResponseData.fromJson(Map<String, dynamic> json) {
    return ResponseData(
      data: json["data"],
      support: json["support"],
    );
  }
}

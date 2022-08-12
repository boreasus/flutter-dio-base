import 'dart:convert';
import 'package:help/entity/checkPin.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const Rest());
}

class Rest extends StatelessWidget {
  const Rest({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    DioClient();
    return Container();
  }
}

void DioClient() async {
  //var api = 'https://reqres.in/api/users?page=2';
  var api =
      'http://10.0.2.2:3000/checkPin/api/fu_mobile/CheckPin/58657358838/8838';
  var result = await Dio().get(api);

  print("RESULT DATA ===========================> ");
  //print(ResponseData.fromJson(result.data).data[1].first_name);
  print(Data.fromJson(result.data).sub!.Result);

  //  var deneme = Map<String, dynamic>.from(result.data);
  // var responseData = ResponseData.fromJson(result.data);
  // print("=========================================>>>>>>>>>>>>>>");
  // print(responseData.data);

  /*
  try{
  var response =
   await Dio().get("http://10.0.2.2:3000/product/$id");
  var result = ResponseData.fromJson(response)
  print("decoded response: $response");

  print("id:" + result.id.toString());
  print("baslik: " + result.baslik.toString());
  }
  catch(e) {
    print(e);
  }
  */
}

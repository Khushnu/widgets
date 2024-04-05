// To parse this JSON data, do
//
//     final apiModel = apiModelFromJson(jsonString);

import 'dart:convert';

ApiModel apiModelFromJson(String str) => ApiModel.fromJson(json.decode(str));

String apiModelToJson(ApiModel data) => json.encode(data.toJson());

class ApiModel {
    List<Datum>? data;

    ApiModel({
        required this.data,
    });

    factory ApiModel.fromJson(Map<String, dynamic> json) {
  // Check if 'data' is null or not present in the JSON
  final jsonData = json['data'];
  if (jsonData == null) {
    return ApiModel(data: null);
  }
  
  // Map over 'data' and convert JSON objects to Datum objects
  List<Datum> dataList = List<Datum>.from(jsonData.map((x) => Datum.fromJson(x)));
  
  // Create and return ApiModel instance
  return ApiModel(data: dataList);
}

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String title;
    String content;
    String author;

    Datum({
        required this.id,
        required this.title,
        required this.content,
        required this.author,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"]?? 0,
        title: json["title"]??"",
        content: json["content"]?? "",
        author: json["author"]?? "",
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "author": author,
    };
}

import 'package:json_annotation/json_annotation.dart';

part 'TotheendModel.g.dart';

@JsonSerializable()
class TotheendModel {
  Data data;
  TotheendModel(this.data);
  factory TotheendModel.fromJson(Map<String, dynamic> json) => _$TotheendModelFromJson(json);

  Map<String, dynamic> toJson() => _$TotheendModelToJson(this);
}

@JsonSerializable()
class Data {
  String author;
  String title;
  String digest;
  String content;
  Data(this.author, this.title, this.digest, this.content);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
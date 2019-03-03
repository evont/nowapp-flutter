// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TotheendModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotheendModel _$TotheendModelFromJson(Map<String, dynamic> json) {
  return TotheendModel(json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$TotheendModelToJson(TotheendModel instance) =>
    <String, dynamic>{'data': instance.data};

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(json['author'] as String, json['title'] as String,
      json['digest'] as String, json['content'] as String);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'digest': instance.digest,
      'content': instance.content
    };

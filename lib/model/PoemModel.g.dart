// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PoemModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PoemModel _$PoemModelFromJson(Map<String, dynamic> json) {
  return PoemModel(
      date: json['Date'] as String,
      content: json['Content'] == null
          ? null
          : Content.fromJson(json['Content'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PoemModelToJson(PoemModel instance) =>
    <String, dynamic>{'Date': instance.date, 'Content': instance.content};

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(json['poem'] == null
      ? null
      : Poem.fromJson(json['poem'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ContentToJson(Content instance) =>
    <String, dynamic>{'poem': instance.poem};

Poem _$PoemFromJson(Map<String, dynamic> json) {
  return Poem(
      json['Id'] as int,
      json['Author'] as String,
      json['Dynasty'] as String,
      (json['Clauses'] as List)
          ?.map((e) =>
              e == null ? null : Detail.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['Title'] == null
          ? null
          : Detail.fromJson(json['Title'] as Map<String, dynamic>),
      json['IsTwoClausesPerSentence'] as bool);
}

Map<String, dynamic> _$PoemToJson(Poem instance) => <String, dynamic>{
      'IsTwoClausesPerSentence': instance.isTwoClausesPerSentence,
      'Id': instance.id,
      'Dynasty': instance.dynasty,
      'Author': instance.author,
      'Clauses': instance.clauses,
      'Title': instance.title
    };

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return Detail(json['Content'] as String);
}

Map<String, dynamic> _$DetailToJson(Detail instance) =>
    <String, dynamic>{'Content': instance.content};

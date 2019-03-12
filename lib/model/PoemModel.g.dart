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
          : Content.fromJson(json['Content'] as Map<String, dynamic>),
      index: json['Index'] as int,
      total: json['Total'] as int);
}

Map<String, dynamic> _$PoemModelToJson(PoemModel instance) => <String, dynamic>{
      'Date': instance.date,
      'Content': instance.content,
      'Index': instance.index,
      'Total': instance.total
    };

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
      poem: json['Poem'] == null
          ? null
          : Poem.fromJson(json['Poem'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ContentToJson(Content instance) =>
    <String, dynamic>{'Poem': instance.poem};

Poem _$PoemFromJson(Map<String, dynamic> json) {
  return Poem(
      id: json['Id'] as int,
      author: json['Author'] as String,
      dynasty: json['Dynasty'] as String,
      clauses: (json['Clauses'] as List)
          ?.map((e) =>
              e == null ? null : Detail.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      title: json['Title'] == null
          ? null
          : Detail.fromJson(json['Title'] as Map<String, dynamic>),
      isTwoClausesPerSentence: json['IsTwoClausesPerSentence'] as bool);
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
  return Detail(
      content: json['Content'] as String,
      breakAfter: json['BreakAfter'] as String,
      comments: (json['Comments'] as List)
          ?.map((e) =>
              e == null ? null : Comment.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$DetailToJson(Detail instance) {
  final val = <String, dynamic>{
    'Content': instance.content,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('BreakAfter', instance.breakAfter);
  writeNotNull('Comments', instance.comments);
  return val;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return Comment(
      content: json['Content'] as String,
      type: json['Type'] as String,
      index: json['Index'] as int);
}

Map<String, dynamic> _$CommentToJson(Comment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Type', instance.type);
  writeNotNull('Content', instance.content);
  writeNotNull('Index', instance.index);
  return val;
}

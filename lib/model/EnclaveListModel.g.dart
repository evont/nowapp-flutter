// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EnclaveListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnclaveListModel _$EnclaveListModelFromJson(Map<String, dynamic> json) {
  return EnclaveListModel(json['result'] == null
      ? null
      : Result.fromJson(json['result'] as Map<String, dynamic>));
}

Map<String, dynamic> _$EnclaveListModelToJson(EnclaveListModel instance) =>
    <String, dynamic>{'result': instance.result};

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
      article: (json['article'] as List)
          ?.map((e) =>
              e == null ? null : Article.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      articleRecommend: (json['articleRecommend'] as List)
          ?.map((e) =>
              e == null ? null : Article.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      date: json['date'] as int,
      topic: json['topic'] == null
          ? null
          : Topic.fromJson(json['topic'] as Map<String, dynamic>))
    ..pageInfo = json['pageInfo'] == null
        ? null
        : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'pageInfo': instance.pageInfo,
      'articleRecommend': instance.articleRecommend,
      'article': instance.article,
      'topic': instance.topic,
      'date': instance.date
    };

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  return PageInfo(
      total: json['total'] as int, currentPage: json['currentPage'] as String);
}

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) => <String, dynamic>{
      'total': instance.total,
      'currentPage': instance.currentPage
    };

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
      cateName: json['cateName'] as String,
      artId: json['artId'] as int,
      artEditor: json['artEditor'] as String,
      artThumb: json['artThumb'] as String,
      artTime: json['artTime'] as int)
    ..artTitle = json['artTitle'] as String;
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'cateName': instance.cateName,
      'artId': instance.artId,
      'artTitle': instance.artTitle,
      'artEditor': instance.artEditor,
      'artThumb': instance.artThumb,
      'artTime': instance.artTime
    };

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return Topic(
      id: json['id'] as int,
      title: json['title'] as String,
      thumb: json['thumb'] as String);
}

Map<String, dynamic> _$TopicToJson(Topic instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumb': instance.thumb
    };

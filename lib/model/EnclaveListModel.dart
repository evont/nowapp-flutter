import 'package:json_annotation/json_annotation.dart';

part 'EnclaveListModel.g.dart';

@JsonSerializable()
class EnclaveListModel {
  Result result;
  EnclaveListModel(this.result);
  factory EnclaveListModel.fromJson(Map<String, dynamic> json) => _$EnclaveListModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnclaveListModelToJson(this);
}

@JsonSerializable()
class Result {
  PageInfo pageInfo;
  List<Article> articleRecommend;
  List<Article> article;
  Topic topic;
  int date;
  Result({ this.article, this.articleRecommend, this.date, this.topic });
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@JsonSerializable()
class PageInfo {
  int total;
  String currentPage;
  PageInfo({ this.total, this.currentPage });
  factory PageInfo.fromJson(Map<String, dynamic> json) => _$PageInfoFromJson(json);
}

@JsonSerializable()
class Article {
  String cateName;
  int artId;
  String artTitle;
  String artEditor;
  String artThumb;
  int artTime;

  Article({ this.cateName, this.artId, this.artEditor, this.artThumb, this.artTime });
  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}

@JsonSerializable()
class Topic {
  int id;
  String title;
  String thumb;
  Topic({ this.id, this.title, this.thumb });
  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}
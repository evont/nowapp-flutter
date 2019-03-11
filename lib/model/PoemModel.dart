import 'package:json_annotation/json_annotation.dart';

part 'PoemModel.g.dart';

@JsonSerializable()
class PoemModel {
  @JsonKey(name: 'Date')
  String date;
  @JsonKey(name: 'Content')
  Content content;
  @JsonKey(name: 'Index')
  int index;
  @JsonKey(name: 'Total')
  int total;
  PoemModel({ this.date, this.content, this.index, this.total });
  
  factory PoemModel.fromJson(Map<String, dynamic> json) => _$PoemModelFromJson(json);

  Map<String, dynamic> toJson() => _$PoemModelToJson(this);
}

@JsonSerializable()
class Content {
  @JsonKey(name: 'Poem')
  Poem poem;
  Content({this.poem});
  factory Content.fromJson(Map<String, dynamic> srcJson) => _$ContentFromJson(srcJson); 
}

@JsonSerializable()
class Poem {
  @JsonKey(name: 'IsTwoClausesPerSentence')
  bool isTwoClausesPerSentence;
  @JsonKey(name: 'Id')
  int id;
  @JsonKey(name: 'Dynasty')
  String dynasty;
  @JsonKey(name: 'Author')
  String author;
  @JsonKey(name: 'Clauses')
  List<Detail> clauses;
  @JsonKey(name: 'Title')
  Detail title;
  Poem({this.id, this.author, this.dynasty, this.clauses, this.title, this.isTwoClausesPerSentence});
  factory Poem.fromJson(Map<String, dynamic> srcJson) => _$PoemFromJson(srcJson); 
}

@JsonSerializable()
class Detail {
  @JsonKey(name: 'Content')
  String content;
  @JsonKey(name: 'BreakAfter', includeIfNull: false)
  bool breakAfter;
  @JsonKey(name: 'Comments', includeIfNull: false)
  List<Comment> comments;
  
  Detail({ this.content, this.breakAfter, this.comments });
  factory Detail.fromJson(Map<String, dynamic> srcJson) => _$DetailFromJson(srcJson); 
}

@JsonSerializable()
class Comment {
  @JsonKey(name: 'Type', includeIfNull: false)
  String type;
  @JsonKey(name: 'Content', includeIfNull: false)
  String content;
  @JsonKey(name: 'Index', includeIfNull: false)
  int index;
  Comment({ this.content, this.type, this.index });
  factory Comment.fromJson(Map<String, dynamic> srcJson) => _$CommentFromJson(srcJson); 
}
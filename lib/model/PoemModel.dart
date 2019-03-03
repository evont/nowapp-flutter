import 'package:json_annotation/json_annotation.dart';

part 'PoemModel.g.dart';

@JsonSerializable()
class PoemModel {
  @JsonKey(name: 'Date')
  String date;
  @JsonKey(name: 'Content')
  Content content;
  PoemModel({ this.date, this.content });
  
  factory PoemModel.fromJson(Map<String, dynamic> json) => _$PoemModelFromJson(json);

  Map<String, dynamic> toJson() => _$PoemModelToJson(this);
}

@JsonSerializable()
class Content {
  Poem poem;
  Content(this.poem);
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
  Poem(this.id, this.author, this.dynasty, this.clauses, this.title, this.isTwoClausesPerSentence);
  factory Poem.fromJson(Map<String, dynamic> srcJson) => _$PoemFromJson(srcJson); 
}

@JsonSerializable()
class Detail {
  @JsonKey(name: 'Content')
  String content;
  Detail(this.content);
  factory Detail.fromJson(Map<String, dynamic> srcJson) => _$DetailFromJson(srcJson); 
}
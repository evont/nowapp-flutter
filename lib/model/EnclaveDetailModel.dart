import 'package:json_annotation/json_annotation.dart';

part 'EnclaveDetailModel.g.dart';

@JsonSerializable()
class EnclaveDetailModel {
  Result result;
  EnclaveDetailModel(this.result);
  factory EnclaveDetailModel.fromJson(Map<String, dynamic> json) => _$EnclaveDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnclaveDetailModelToJson(this);
}

@JsonSerializable()
class Result {
  int artId;
  int artTime;
  String artTitle;
  String artContent;
  String artThumb;
  String artEditor;

  Result({ this.artId, this.artTime, this.artTitle, this.artContent, this.artThumb, this.artEditor });
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
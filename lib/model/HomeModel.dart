import 'package:json_annotation/json_annotation.dart';

part 'HomeModel.g.dart';

@JsonSerializable()
class HomeModel {
  int lYear;
  int lMonth;
  int lDay;
  int cYear;
  int cMonth;
  int cDay;
  String ncWeek;
  String monthAlias;
  @JsonKey(name: 'IMonthCn')
  String iMonthCn;
  @JsonKey(name: 'IDayCn')
  String iDayCn;
  Phase phase;
  HomeModel({ this.lYear, this.lMonth, this.lDay, this.cYear, this.cMonth, this.cDay, this.ncWeek, this.monthAlias, this.iMonthCn, this.iDayCn, this.phase });
  
  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

@JsonSerializable()
class Phase {
  double fraction;
  double phase;
  double angle;

  Phase(this.fraction, this.phase, this.angle);
  factory Phase.fromJson(Map<String, dynamic> srcJson) => _$PhaseFromJson(srcJson); 
}
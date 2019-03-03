// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return HomeModel(
      lYear: json['lYear'] as int,
      lMonth: json['lMonth'] as int,
      lDay: json['lDay'] as int,
      cYear: json['cYear'] as int,
      cMonth: json['cMonth'] as int,
      cDay: json['cDay'] as int,
      ncWeek: json['ncWeek'] as String,
      monthAlias: json['monthAlias'] as String,
      iMonthCn: json['IMonthCn'] as String,
      iDayCn: json['IDayCn'] as String,
      phase: json['phase'] == null
          ? null
          : Phase.fromJson(json['phase'] as Map<String, dynamic>));
}

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'lYear': instance.lYear,
      'lMonth': instance.lMonth,
      'lDay': instance.lDay,
      'cYear': instance.cYear,
      'cMonth': instance.cMonth,
      'cDay': instance.cDay,
      'ncWeek': instance.ncWeek,
      'monthAlias': instance.monthAlias,
      'IMonthCn': instance.iMonthCn,
      'IDayCn': instance.iDayCn,
      'phase': instance.phase
    };

Phase _$PhaseFromJson(Map<String, dynamic> json) {
  return Phase((json['fraction'] as num)?.toDouble(),
      (json['phase'] as num)?.toDouble(), (json['angle'] as num)?.toDouble());
}

Map<String, dynamic> _$PhaseToJson(Phase instance) => <String, dynamic>{
      'fraction': instance.fraction,
      'phase': instance.phase,
      'angle': instance.angle
    };

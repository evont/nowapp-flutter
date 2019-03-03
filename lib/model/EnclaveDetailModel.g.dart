// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EnclaveDetailModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnclaveDetailModel _$EnclaveDetailModelFromJson(Map<String, dynamic> json) {
  return EnclaveDetailModel(json['result'] == null
      ? null
      : Result.fromJson(json['result'] as Map<String, dynamic>));
}

Map<String, dynamic> _$EnclaveDetailModelToJson(EnclaveDetailModel instance) =>
    <String, dynamic>{'result': instance.result};

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
      artId: json['artId'] as int,
      artTime: json['artTime'] as int,
      artTitle: json['artTitle'] as String,
      artContent: json['artContent'] as String,
      artThumb: json['artThumb'] as String,
      artEditor: json['artEditor'] as String);
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'artId': instance.artId,
      'artTime': instance.artTime,
      'artTitle': instance.artTitle,
      'artContent': instance.artContent,
      'artThumb': instance.artThumb,
      'artEditor': instance.artEditor
    };

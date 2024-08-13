// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepImpl _$$StepImplFromJson(Map<String, dynamic> json) => _$StepImpl(
      content: json['content'] as String,
      medias:
          (json['medias'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$StepImplToJson(_$StepImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'medias': instance.medias,
    };

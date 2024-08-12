// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepImpl _$$StepImplFromJson(Map<String, dynamic> json) => _$StepImpl(
      content: json['content'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$StepImplToJson(_$StepImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'images': instance.images,
    };

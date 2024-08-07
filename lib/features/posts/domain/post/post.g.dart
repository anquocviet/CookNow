// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      nopEat: (json['nop_eat'] as num).toInt(),
      prepareTime: json['prepare_time'] as String,
      dateTimePost: json['date_time_post'] as String,
      category: json['category'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList(),
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      emojis: (json['emojis'] as List<dynamic>)
          .map((e) => Emoji.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'nop_eat': instance.nopEat,
      'prepare_time': instance.prepareTime,
      'date_time_post': instance.dateTimePost,
      'category': instance.category,
      'ingredients': instance.ingredients,
      'steps': instance.steps,
      'owner': instance.owner,
      'emojis': instance.emojis,
    };

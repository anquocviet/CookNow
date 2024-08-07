// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      postId: json['post_id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      content: json['content'] as String,
      image: json['image'] as String,
      dateTimeComment: DateTime.parse(json['date_time_comment'] as String),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'post_id': instance.postId,
      'name': instance.name,
      'avatar': instance.avatar,
      'content': instance.content,
      'image': instance.image,
      'date_time_comment': instance.dateTimeComment.toIso8601String(),
    };

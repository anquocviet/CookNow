// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: (json['gender'] as num).toInt(),
      age: (json['age'] as num).toInt(),
      living: json['living'] as String,
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      bio: json['bio'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      avatar: json['avatar'] as String,
      postsSaved: (json['posts_saved'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      following: (json['following'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      follower: (json['follower'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      blocks: (json['blocks'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'age': instance.age,
      'living': instance.living,
      'account': instance.account,
      'bio': instance.bio,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'posts_saved': instance.postsSaved,
      'following': instance.following,
      'follower': instance.follower,
      'blocks': instance.blocks,
    };

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      username: json['username'] as String,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
    };

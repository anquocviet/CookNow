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
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
      followers:
          (json['followers'] as List<dynamic>).map((e) => e as String).toList(),
      blocks:
          (json['blocks'] as List<dynamic>).map((e) => e as String).toList(),
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
      'following': instance.following,
      'followers': instance.followers,
      'blocks': instance.blocks,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmojiImpl _$$EmojiImplFromJson(Map<String, dynamic> json) => _$EmojiImpl(
      k: json['k'] as String,
      v: (json['v'] as List<dynamic>).map((e) => e as String).toList(),
      qty: (json['qty'] as num).toInt(),
    );

Map<String, dynamic> _$$EmojiImplToJson(_$EmojiImpl instance) =>
    <String, dynamic>{
      'k': instance.k,
      'v': instance.v,
      'qty': instance.qty,
    };

import 'package:cooknow/features/posts/domain/emoji/emoji.dart';
import 'package:cooknow/features/posts/domain/owner/owner.dart';
import 'package:cooknow/features/posts/domain/step/step.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required String id,
    required String name,
    required String image,
    @JsonKey(name: 'nop_eat') required int nopEat, // number of people eat
    @JsonKey(name: 'prepare_time') required String prepareTime,
    @JsonKey(name: 'date_time_post') required String dateTimePost,
    required String category,
    required List<String> ingredients,
    required List<Step> steps,
    required Owner owner,
    required List<Emoji> emojis,
  }) = _Post;

  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  factory Comment({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'post_id') required String postId,
    required String name,
    required String avatar,
    required String content,
    required String image,
    @JsonKey(name: 'date_time_comment') required DateTime dateTimeComment,
  }) = _Comment;

  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

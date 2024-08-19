class CreateCommentDto {
  CreateCommentDto({
    required this.userId,
    required this.postId,
    required this.content,
    required this.dateTimeComment,
  });

  final String userId;
  final String postId;
  final String content;
  final String dateTimeComment;

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'post_id': postId,
      'content': content,
      'date_time_comment': dateTimeComment,
    };
  }
}

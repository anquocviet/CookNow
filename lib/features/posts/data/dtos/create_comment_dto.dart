class CreateCommentDto {
  CreateCommentDto({
    required this.userId,
    required this.postId,
    required this.content,
    this.image = '',
  });

  final String userId;
  final String postId;
  final String content;
  final String image;

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'post_id': postId,
      'content': content,
      'image': image,
    };
  }
}

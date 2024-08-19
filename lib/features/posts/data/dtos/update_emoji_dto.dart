enum EnumEmoji {
  like,
  love,
  haha,
  wow,
  sad,
  angry,
}

class UpdateEmojiDto {
  final String postId;
  final String userId;
  final EnumEmoji emoji;

  UpdateEmojiDto({
    required this.postId,
    required this.userId,
    required this.emoji,
  });

  Map<String, dynamic> toJson() {
    return {
      'postId': postId,
      'userId': userId,
      'typeEmoji': emoji.name,
    };
  }
}

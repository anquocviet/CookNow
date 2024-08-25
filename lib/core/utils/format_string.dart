String timeAgoSinceDate(DateTime specificTime) {
  DateTime now = DateTime.now();
  Duration difference = now.difference(specificTime);

  if (difference.inDays > 365) {
    int years = (difference.inDays / 365).floor();
    return '$years năm trước';
  } else if (difference.inDays > 30) {
    int months = (difference.inDays / 30).floor();
    return '$months tháng trước';
  } else if (difference.inDays > 0) {
    return '${difference.inDays} ngày trước';
  } else if (difference.inHours > 0) {
    return '${difference.inHours} giờ trước';
  } else if (difference.inMinutes > 0) {
    return '${difference.inMinutes} phút trước';
  } else {
    return 'Mới đây';
  }
}

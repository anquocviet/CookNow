bool isPhone(String phone) {
  return RegExp(r'^[0-9]{10}$').hasMatch(phone);
}

bool isEmail(String email) {
  return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
}

bool isVideo(String url) {
  return url.toLowerCase().contains('.mp4') ||
      url.toLowerCase().contains('.avi') ||
      url.toLowerCase().contains('.mov');
}

bool isLinkOnline(String url) {
  return RegExp(r'^http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?$')
      .hasMatch(url);
}

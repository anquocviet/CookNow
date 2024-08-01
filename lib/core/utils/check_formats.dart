bool isPhone(String phone) {
  return RegExp(r'^[0-9]{10}$').hasMatch(phone);
}

bool isEmail(String email) {
  return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
}

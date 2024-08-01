class FirebaseException implements Exception {
  final String message;

  FirebaseException(this.message);
}

class FirebaseInvalidVerificationCodeException extends FirebaseException {
  FirebaseInvalidVerificationCodeException()
      : super('Mã xác minh không hợp lệ');
}

class FirebaseSessionExpiredException extends FirebaseException {
  FirebaseSessionExpiredException() : super('OTP đã hết hạn');
}

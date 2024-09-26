sealed class AppException implements Exception {
  final String message;

  AppException(this.message);
}

// ================== UNKNOWN EXCEPTIONS ==================
// Define exceptions unknown from server here

class NoInternetException extends AppException {
  NoInternetException() : super('Không có kết nối internet');
}

class AppUnknownException extends AppException {
  AppUnknownException() : super('Đã xảy ra lỗi không xác định');
}

class ServerErrorException extends AppException {
  ServerErrorException() : super('Đã xảy ra lỗi trên máy chủ');
}

// ================== AUTHENTICATION EXCEPTIONS ==================
// Define authentication exceptions here
class InvalidUsernameOrPasswordException extends AppException {
  InvalidUsernameOrPasswordException()
      : super('Tên đăng nhập hoặc mật khẩu không đúng');
}

class AccountNotFoundException extends AppException {
  AccountNotFoundException() : super('Tài khoản không tồn tại');
}

class UsernameIsAlreadyInUseException extends AppException {
  UsernameIsAlreadyInUseException() : super('Tên người dùng đã được sử dụng');
}

class MailOrPhoneIsAlreadyInUseException extends AppException {
  MailOrPhoneIsAlreadyInUseException()
      : super('Email hoặc số điện thoại đã được sử dụng');
}

class AccountIsDisabledException extends AppException {
  AccountIsDisabledException() : super('Tài khoản đã bị vô hiệu hóa');
}

class TokenIsInvalidException extends AppException {
  TokenIsInvalidException() : super('Token không hợp lệ');
}

class TokenExpiredException extends AppException {
  TokenExpiredException() : super('Phiên đăng nhập đã hết hạn');
}

class TokenNotFoundException extends AppException {
  TokenNotFoundException()
      : super('Không tìm thấy thông tin đăng nhập trên thiết bị');
}

class LogoutFailedException extends AppException {
  LogoutFailedException() : super('Đăng xuất thất bại. Vui lòng thử lại');
}

// ================== POST EXCEPTIONS ==================
// Define exceptions from post here
class PostNotFoundException extends AppException {
  PostNotFoundException() : super('Bài viết không tồn tại hoặc đã bị xóa');
}

// ================== FIREBASE EXCEPTIONS ==================
// Define exceptions from Firebase here
class FirebaseInvalidVerificationCodeException extends AppException {
  FirebaseInvalidVerificationCodeException()
      : super('Mã xác minh không hợp lệ');
}

class FirebaseSessionExpiredException extends AppException {
  FirebaseSessionExpiredException() : super('OTP đã hết hạn');
}

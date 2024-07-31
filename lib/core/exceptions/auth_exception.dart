sealed class AuthException implements Exception {
  final String message;

  AuthException(this.message);
}

class InvalidUsernameOrPasswordException extends AuthException {
  InvalidUsernameOrPasswordException()
      : super('Tên đăng nhập hoặc mật khẩu không đúng');
}

class AccountNotFoundException extends AuthException {
  AccountNotFoundException() : super('Tài khoản không tồn tại');
}

class UserAlreadyExistsException extends AuthException {
  UserAlreadyExistsException() : super('Tài khoản đã tồn tại');
}

class AccountIsDisabledException extends AuthException {
  AccountIsDisabledException() : super('Tài khoản đã bị vô hiệu hóa');
}

class TokenIsInvalidException extends AuthException {
  TokenIsInvalidException() : super('Token không hợp lệ');
}

class TokenExpiredException extends AuthException {
  TokenExpiredException() : super('Phiên đăng nhập đã hết hạn');
}

class TokenNotFoundException extends AuthException {
  TokenNotFoundException()
      : super('Không tìm thấy thông tin đăng nhập trên thiết bị');
}

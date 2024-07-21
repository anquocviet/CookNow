sealed class ApiException implements Exception {
  final String message;

  ApiException(this.message);
}

class NoInternetException extends ApiException {
  NoInternetException() : super('Không có kết nối internet');
}

class UnknownException extends ApiException {
  UnknownException() : super('Đã xảy ra lỗi không xác định');
}

class ServerErrorException extends ApiException {
  ServerErrorException() : super('Đã xảy ra lỗi trên máy chủ');
}

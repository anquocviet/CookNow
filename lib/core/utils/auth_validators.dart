import 'package:cooknow/core/utils/string_validator.dart';

enum AuthMode { login, register }

mixin AuthValidators {
  final StringValidator passwordSubmitValidator =
      PasswordSubmitRegexValidator();
  final StringValidator minLengthPasswordValidator =
      MinLengthStringValidator(8);
  final StringValidator noneEmptyStringValidator = NonEmptyStringValidator();
  final StringValidator numberSubmitValidator = NumberSubmitRegexValidator();
  final StringValidator emailSubmitValidator = EmailSubmitRegexValidator();

  bool canSubmitUsername(String username) {
    return noneEmptyStringValidator.isValid(username);
  }

  bool canSubmitAge(String age) {
    return numberSubmitValidator.isValid(age);
  }

  bool canSubmitEmail(String email) {
    return emailSubmitValidator.isValid(email);
  }

  bool canSubmitPhoneNumber(String phoneNumber) {
    return numberSubmitValidator.isValid(phoneNumber) &&
        phoneNumber.length == 10;
  }

  bool canSubmitPassword(String password, AuthMode authMode) {
    if (authMode == AuthMode.register) {
      return minLengthPasswordValidator.isValid(password) &&
          passwordSubmitValidator.isValid(password);
    }
    return noneEmptyStringValidator.isValid(password);
  }

  String? usernameErrorText(String username) {
    final bool showErrorText = !canSubmitUsername(username);
    return showErrorText ? 'Username không được rỗng' : null;
  }

  String? ageErrorText(String age) {
    final bool showErrorText = !canSubmitAge(age);
    return showErrorText
        ? 'Tuổi chỉ chứa kí tự số'
        : int.parse(age) < 16
            ? 'Tuổi phải lớn hơn hoặc bằng 16'
            : null;
  }

  String? emailErrorText(String email) {
    final bool showErrorText = !canSubmitEmail(email);
    final errorText =
        email.isEmpty ? 'Email không được rỗng' : 'Email không hợp lệ';
    return showErrorText ? errorText : null;
  }

  String? phoneNumberErrorText(String phoneNumber) {
    final bool showErrorText = !canSubmitPhoneNumber(phoneNumber);
    final errorText = phoneNumber.isEmpty
        ? 'Số điện thoại không được rỗng'
        : 'Số điện thoại phải chứa 10 kí tự số';
    return showErrorText ? errorText : null;
  }

  String? passwordErrorText(String password, AuthMode authMode) {
    final bool showErrorText = !canSubmitPassword(password, authMode);
    final errorText = password.isEmpty
        ? 'Password không được rỗng'
        : !minLengthPasswordValidator.isValid(password)
            ? 'Password phải chứa ít nhất 8 kí tự'
            : 'Password phải chứa ít nhất một ký tự hoa, một ký tự thường, một số, và một ký tự đặc biệt.';
    return showErrorText ? errorText : null;
  }
}

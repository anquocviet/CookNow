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

  bool canSubmitFullName(String fullName) {
    return noneEmptyStringValidator.isValid(fullName);
  }

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

  bool canSubmitConfirmPassword(String password, String confirmPassword) {
    return password == confirmPassword;
  }

  String? fullNameErrorText(String fullName) {
    final bool showErrorText = !canSubmitFullName(fullName);
    return showErrorText ? 'Họ và tên không được rỗng' : null;
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
        : 'Số điện thoại không hợp lệ';
    return showErrorText ? errorText : null;
  }

  String? mailPhoneErrorText(String mailPhone) {
    final bool showErrorText =
        !canSubmitPhoneNumber(mailPhone) && !canSubmitEmail(mailPhone);
    final errorText = mailPhone.isEmpty
        ? 'Email hoặc số điện thoại không được rỗng'
        : 'Email hoặc số điện thoại không hợp lệ';
    return showErrorText ? errorText : null;
  }

  String? passwordErrorText(String password, AuthMode authMode) {
    final bool showErrorText = !canSubmitPassword(password, authMode);
    final errorText = password.isEmpty
        ? 'Password không được rỗng'
        : !minLengthPasswordValidator.isValid(password)
            ? 'Password phải chứa ít nhất 8 kí tự'
            : 'Password phải có chứa ký tự hoa, ký tự thường, số, và ký tự đặc biệt.';
    return showErrorText ? errorText : null;
  }

  String? confirmPasswordErrorText(String password, String confirmPassword) {
    final bool showErrorText =
        !canSubmitConfirmPassword(password, confirmPassword);
    final errorText = confirmPassword.isEmpty
        ? 'Password không được rỗng'
        : 'Password không khớp';
    return showErrorText ? errorText : null;
  }
}

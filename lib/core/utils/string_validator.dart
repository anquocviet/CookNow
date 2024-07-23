import 'package:flutter/services.dart';

abstract class StringValidator {
  bool isValid(String value);
}

class RegexValidator implements StringValidator {
  RegexValidator({required this.regexSource});

  final String regexSource;

  @override
  bool isValid(String value) {
    try {
      final RegExp regex = RegExp(regexSource);
      return regex.hasMatch(value) &&
          regex.matchAsPrefix(value)?.end == value.length;
    } on Exception catch (e) {
      assert(false, e.toString());
      return false;
    }
  }
}

/// Class to validate the input text.
/// [stringValidator] is the validator to validate the input text
/// If the input text is invalid, the formatter will return the old value
class ValidatorInputFormatter implements TextInputFormatter {
  ValidatorInputFormatter({required this.stringValidator});

  final StringValidator stringValidator;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final bool oldValueValid = stringValidator.isValid(oldValue.text);
    final bool newValueValid = stringValidator.isValid(newValue.text);
    if (oldValueValid && !newValueValid) {
      return oldValue;
    }
    return newValue;
  }
}

class EmailSubmitRegexValidator extends RegexValidator {
  EmailSubmitRegexValidator() : super(regexSource: '^\\S+@\\S+\\.\\S+\$');
}

class NumberSubmitRegexValidator extends RegexValidator {
  NumberSubmitRegexValidator() : super(regexSource: r'^\d+$');
}

class PasswordSubmitRegexValidator extends RegexValidator {
  PasswordSubmitRegexValidator()
      : super(
            regexSource: r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).+$');
}

class NonEmptyStringValidator extends StringValidator {
  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

class MinLengthStringValidator extends StringValidator {
  MinLengthStringValidator(this.minLength);

  final int minLength;

  @override
  bool isValid(String value) {
    return value.length >= minLength;
  }
}

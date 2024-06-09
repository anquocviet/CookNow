import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
    this.label, {
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.keyboardType = TextInputType.text,
    this.onChanged,
  });

  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      enableSuggestions: enableSuggestions,
      autocorrect: autocorrect,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onChanged: onChanged,
      onEditingComplete: () {
        FocusScope.of(context).nextFocus();
      },
    );
  }
}

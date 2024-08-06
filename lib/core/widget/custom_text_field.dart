import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
    this.label, {
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.validator,
    this.onEditingComplete,
    this.onChanged,
  });

  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function()? onEditingComplete;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      enableSuggestions: enableSuggestions,
      autocorrect: autocorrect,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        errorMaxLines: 3,
      ),
      onChanged: onChanged,
      controller: controller,
      onEditingComplete: onEditingComplete,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthTextField extends ConsumerStatefulWidget {
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
  ConsumerState<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends ConsumerState<AuthTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      enableSuggestions: widget.enableSuggestions,
      autocorrect: widget.autocorrect,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.label,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onChanged: widget.onChanged,
      controller: _controller,
      onEditingComplete: () {
        FocusScope.of(context).nextFocus();
      },
    );
  }
}

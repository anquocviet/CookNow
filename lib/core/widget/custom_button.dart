import 'package:flutter/material.dart';

/// A custom button widget.
///
/// This widget represents a custom button that can be used in the application.
/// It is a stateless widget, which means it does not maintain any internal state.
class CustomButton extends StatelessWidget {
  const CustomButton(
    this.text, {
    super.key,
    this.width,
    this.icon,
    this.color,
    required this.onPressed,
  });

  final String text;
  final double? width;
  final Icon? icon;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final width = this.width ?? MediaQuery.of(context).size.width * 0.9;
    final color = this.color ?? Theme.of(context).primaryColor;
    return SizedBox(
      width: width,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        icon: icon,
        label: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

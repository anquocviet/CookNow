import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton(this.text,
      {super.key, this.width, this.icon, this.color, required this.onPressed});

  final String text;
  final double? width;
  final Icon? icon;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final width = this.width ?? MediaQuery.of(context).size.width;
    final color = this.color ?? Theme.of(context).primaryColor;
    return SizedBox(
      width: width * 0.9,
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

import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton(this.text, {super.key, this.width, this.icon, this.color});

  final String text;
  final double? width;
  final Icon? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final width = this.width ?? MediaQuery.of(context).size.width;
    final color = this.color ?? const Color.fromRGBO(221, 91, 25, 1);
    return SizedBox(
      width: width * 0.9,
      child: ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          icon: icon,
          label: Text(
            text,
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          )),
    );
  }
}

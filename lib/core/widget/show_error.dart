import 'package:flutter/material.dart';

void showError(BuildContext context, String error) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(error)),
    );
  });
}

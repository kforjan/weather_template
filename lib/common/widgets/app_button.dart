import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({required this.onPressed, required this.label, super.key});

  final dynamic Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

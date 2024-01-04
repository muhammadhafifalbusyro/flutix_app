import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Color borderColor;
  final double borderRadius;
  final double borderWidth;
  final ValueChanged<String>? onChanged;
  final bool obscureText;

  CustomTextField({
    required this.hintText,
    required this.labelText,
    required this.borderColor,
    required this.borderRadius,
    required this.borderWidth,
    required this.obscureText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(
          backgroundColor: Colors.white,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
      ),
    );
  }
}
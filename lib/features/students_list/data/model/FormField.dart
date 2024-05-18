import 'package:flutter/material.dart';

class FormFieldData {
  final String label;
  final String key;
  final String hint;
  final bool obscureText;

  FormFieldData({
    required this.label,
    required this.key,
    required this.hint,
    this.obscureText = false,
  });
}
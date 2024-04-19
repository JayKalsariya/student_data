import 'package:flutter/material.dart';

SnackBar mySnackBar({
  required String content,
  required Color color,
}) {
  return SnackBar(
    content: Text(content),
    behavior: SnackBarBehavior.floating,
    backgroundColor: color,
  );
}

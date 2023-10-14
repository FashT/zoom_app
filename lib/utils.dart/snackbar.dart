import 'package:flutter/material.dart';

showSnackBar(BuildContext context, text) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

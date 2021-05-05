import 'package:flutter/material.dart';

class SigaTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  SigaTextButton({required this.onPressed, required this.text});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(text),
      onPressed: onPressed,
    );
  }
}

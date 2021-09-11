import 'package:flutter/material.dart';

class SigaTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final double? size;
  SigaTextButton({required this.onPressed, required this.text, this.size});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      clipBehavior: Clip.antiAlias,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Color.fromRGBO(33, 54, 112, 1)),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0))),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
    );
  }
}

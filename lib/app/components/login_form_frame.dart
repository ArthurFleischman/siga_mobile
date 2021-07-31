import 'package:flutter/material.dart';

class LoginFormFrame extends StatelessWidget {
  final Widget form;
  const LoginFormFrame({
    required this.form,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      color: Color.fromRGBO(255, 255, 255, .9),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: form,
      ),
    );
  }
}

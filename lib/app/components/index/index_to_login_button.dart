import 'package:flutter/material.dart';

class IndexToLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => print("ok"),
      child: Text(
        "Login",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

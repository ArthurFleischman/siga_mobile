import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(),
          TextFormField(),
          TextButton(
            onPressed: () => print("OK"),
            child: Text("login"),
          ),
        ],
      ),
    );
  }
}

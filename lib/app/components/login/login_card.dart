import 'package:flutter/material.dart';
import 'package:siga_mobile/app/forms/login_form.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: LoginForm(),
    );
  }
}

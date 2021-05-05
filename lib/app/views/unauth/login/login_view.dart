import 'package:flutter/material.dart';
import 'package:siga_mobile/app/views/unauth/login/login_form.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Card(
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:siga_mobile/app/views/unauth/login_component/login_form.dart';

// final _vm = GetIt.I<IndexViewModel>();

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Card(
              child: LoginForm(),
            ),
          ),
        ],
      ),
    );
  }
}

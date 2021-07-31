import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/components/login_form_frame.dart';
import 'package:siga_mobile/app/viewmodels/index/index_viewmodel.dart';
import 'package:siga_mobile/app/views/unauth/login/login_form.dart';

final _vm = GetIt.I<IndexViewModel>();

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: _vm.getSwitchfunction,
              icon: Icon(
                Icons.arrow_back,
                size: 24,
                color: Colors.white,
              ),
            ),
            LoginFormFrame(
              form: LoginForm(),
            ),
          ],
        ),
      ),
    );
  }
}

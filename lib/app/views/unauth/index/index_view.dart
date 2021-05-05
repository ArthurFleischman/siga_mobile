import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/components/text_button.dart';
import 'package:siga_mobile/app/viewmodels/index/index_viewmodel.dart';
import 'package:siga_mobile/app/views/unauth/index/index_logo_box.dart';
import 'package:siga_mobile/app/views/unauth/login/login_view.dart';

class IndexView extends StatefulWidget {
  @override
  _IndexViewState createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  final _vm = GetIt.I<IndexViewModel>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(flex: 2),
              IndexLogoBox(),
              Spacer(flex: 1),
              SigaTextButton(
                text: "Login",
                onPressed: () => _vm.navigateToLogin(context),
              ),
              SigaTextButton(
                text: "Request Access",
                onPressed: () => print("ok"),
              ),
              SigaTextButton(
                text: "About Siga",
                onPressed: () => print("ok"),
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

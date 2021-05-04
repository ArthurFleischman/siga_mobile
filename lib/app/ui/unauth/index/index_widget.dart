import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/app_controller.dart';
import 'package:siga_mobile/app/components/index/index_app_bar.dart';
import 'package:siga_mobile/app/components/index/index_background.dart';
import 'package:siga_mobile/app/components/index/index_to_login_button.dart';
import 'package:siga_mobile/app/components/login/login_card.dart';

class IndexWidget extends StatefulWidget {
  @override
  _IndexWidgetState createState() => _IndexWidgetState();
}

class _IndexWidgetState extends State<IndexWidget> {
  final _controller = GetIt.I<AppController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Spacer(flex: 1),
              IndexLogoBox(),
              Spacer(flex: 2),
              IndexToLoginButton(),
              Spacer(flex: 2),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}

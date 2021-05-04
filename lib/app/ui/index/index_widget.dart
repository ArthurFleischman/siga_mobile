import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/app_controller.dart';

class IndexWidget extends StatelessWidget {
final _controller = GetIt.I<AppController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: TextButton(
              child: Text("Dark"),
              onPressed: () => _controller.changeTheme(),
            ),
            color: Colors.blue,
            height: 20,
            width: 40,
          ),
        ),
      ),
    );
  }
}

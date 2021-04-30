import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../app_controller.dart';

class IndexWidget extends StatelessWidget {
  final _controller = Modular.get<AppController>();
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

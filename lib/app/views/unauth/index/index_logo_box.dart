import 'package:flutter/material.dart';

class IndexLogoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/siga-logo.png"),
        Image.asset("assets/images/upe-logo.png")
      ],
    );
  }
}

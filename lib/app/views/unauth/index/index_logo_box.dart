import 'package:flutter/material.dart';

class IndexLogoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/siga-logo.png"),
        Image.asset("assets/images/upe-logo.png")
      ],
    );
  }
}

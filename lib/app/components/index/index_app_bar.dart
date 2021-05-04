import 'package:flutter/material.dart';
import 'package:siga_mobile/app/core/constants.dart';

class IndexLogoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/siga-logo.png",
            height: kToolbarHeight,
          ),
          Image.asset(
            "assets/images/upe-logo.png",
            height: kToolbarHeight,
          ),
        ],
      ),
    );
  }
}

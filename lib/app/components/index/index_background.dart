import 'package:flutter/material.dart';

class IndexBackground extends StatelessWidget {
  final Widget child;
  IndexBackground({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: <Color>[
      //       Colors.blue,
      //       // Colors.red,
      //       // Colors.yellow,
      //     ],
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      //   ),
      // ),
      // color: Colors.white,
      child: child,
    );
  }
}

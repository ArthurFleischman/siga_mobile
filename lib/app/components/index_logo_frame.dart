import 'package:flutter/material.dart';

class IndexLogoFrame extends StatelessWidget {
  final Widget logo;
  const IndexLogoFrame({
    required this.logo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      color: Color.fromRGBO(255, 255, 255, .75),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: logo,
      ),
    );
  }
}

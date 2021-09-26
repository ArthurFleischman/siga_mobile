import 'package:flutter/material.dart';

class HomeContentItem extends StatelessWidget {
  final int index;
  final String text;
  const HomeContentItem({Key? key, required this.index, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      child: Card(
        elevation: 10,
        child: GridTile(
          header: Text("tile n $index"),
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}

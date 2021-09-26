import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  final String name;
  final double height;

  const HomeAppBar({
    Key? key,
    required this.name,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // centerTitle: true,
      decoration: BoxDecoration(
        color: Colors.red[300],
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
        // border: Border.all(
        //   width: 3,
        //   color: Colors.green,
        //   style: BorderStyle.solid,
        // ),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 40,
              left: 30,
              child: Text(
                "Hi, $name",
                style: TextStyle(fontSize: 24),
              ))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height * .2 - 27);
}

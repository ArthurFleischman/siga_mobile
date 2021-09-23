import 'package:flutter/material.dart';

class HomeContentList extends StatelessWidget {
  const HomeContentList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: SizedBox(height: 200, width: 200, child: Text("ok $index")),
          );
        });
  }
}

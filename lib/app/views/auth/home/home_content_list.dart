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
          return Container(
            height: 20,
            width: 100,
            child: Card(
              child: ListTile(title: Text("ok $index")),
            ),
          );
        });
  }
}

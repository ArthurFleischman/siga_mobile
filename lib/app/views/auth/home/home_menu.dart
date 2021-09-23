import 'package:flutter/material.dart';
import 'package:siga_mobile/app/views/auth/home/home_content_list.dart';
import 'package:siga_mobile/app/views/auth/home/home_menu_frame.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Placeholder(),
            ),
          ),
          Expanded(flex: 2, child: HomeMenuFrame())
        ],
      ),
    );
  }
}

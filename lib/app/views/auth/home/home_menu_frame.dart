import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/components/text_button.dart';
import 'package:siga_mobile/app/viewmodels/home/home_viewmodel.dart';
import 'package:siga_mobile/app/views/auth/home/home_content_list.dart';

HomeViewmodel _viewmodel = GetIt.I<HomeViewmodel>();

class HomeMenuFrame extends StatelessWidget {
  const HomeMenuFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.red[300],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(100),
            // topLeft: Radius.circular(50),
          ),
          // border: Border.all(
          //   width: 3,
          //   color: Colors.green,
          //   style: BorderStyle.solid,
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SigaTextButton(
              text: "Lgout",
              onPressed: _viewmodel.logout,
            ),
            SizedBox(
              height: 100,
              child: HomeContentList(),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/components/text_button.dart';
import 'package:siga_mobile/app/models/user.dart';
import 'package:siga_mobile/app/viewmodels/home/home_viewmodel.dart';

HomeViewmodel _homeVM = GetIt.I<HomeViewmodel>();

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<User?>(
          future: _homeVM.getUser(),
          builder: (context, asyncSnap) {
            if (asyncSnap.hasData) {
              if (asyncSnap.connectionState == ConnectionState.waiting)
                return CircularProgressIndicator();
              else
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${asyncSnap.data!.name}"),
                    SigaTextButton(
                        onPressed: () async => await _homeVM.logout(context),
                        text: "logout"),
                  ],
                );
            } else
              return Placeholder();
          },
        ),
      ),
    );
  }
}

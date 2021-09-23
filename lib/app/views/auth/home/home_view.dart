import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/models/user.dart';
import 'package:siga_mobile/app/viewmodels/home/home_viewmodel.dart';
import 'package:siga_mobile/app/views/auth/home/home_menu.dart';

HomeViewmodel _homeVM = GetIt.I<HomeViewmodel>();

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _homeVM.setCtx = context;
    return Scaffold(
      body: Center(
        child: FutureBuilder<User?>(
          future: _homeVM.getUser(),
          builder: (context, asyncSnap) {
            if (asyncSnap.hasData) {
              if (asyncSnap.connectionState == ConnectionState.waiting)
                return CircularProgressIndicator();
              else
                return HomeMenu();
            } else
              return Placeholder();
          },
        ),
      ),
    );
  }
}

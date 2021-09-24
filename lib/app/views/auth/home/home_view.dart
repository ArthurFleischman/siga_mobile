import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
      ),
      body: Center(
        child: FutureBuilder<User?>(
          future: _homeVM.getUser(),
          builder: (context, asyncSnap) {
            if (asyncSnap.connectionState == ConnectionState.waiting)
              return CircularProgressIndicator();
            else
              return HomeMenu();
          },
        ),
      ),
    );
  }
}
// SigaTextButton(
//               text: "Lgout",
//               onPressed: _viewmodel.logout,
//             ),

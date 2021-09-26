import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/components/text_button.dart';
import 'package:siga_mobile/app/models/user.dart';
import 'package:siga_mobile/app/viewmodels/home/home_viewmodel.dart';
import 'package:siga_mobile/app/views/auth/home/home_app_bar.dart';

final HomeViewmodel _homeVM = GetIt.I<HomeViewmodel>();

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _homeVM.setCtx = context;
    return FutureBuilder<User?>(
      future: _homeVM.getUser(),
      builder: (context, asyncSnap) {
        if (asyncSnap.connectionState == ConnectionState.waiting)
          return Center(child: CircularProgressIndicator());
        else
          return HomePageView(userData: asyncSnap.data!);
      },
    );
  }
}

class HomePageView extends StatefulWidget {
  final User userData;
  const HomePageView({Key? key, required this.userData}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final PageController _pageController =
      PageController(initialPage: _homeVM.getPageIndex);
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: HomeAppBar(
          height: _size.height,
          name: widget.userData.name,
        ),
        bottomNavigationBar: Observer(
          builder: (_) => CurvedNavigationBar(
              items: _homeVM.getNavIcons,
              buttonBackgroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
              animationCurve: Curves.linear,
              animationDuration: Duration(milliseconds: 600),
              index: _homeVM.getPageIndex,
              onTap: (index) => _pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  )),
        ),
        body: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          allowImplicitScrolling: false,
          children: _homeVM.getPages,
        ),
      ),
    );
  }
}

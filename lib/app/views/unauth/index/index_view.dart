import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/components/index_logo_frame.dart';
import 'package:siga_mobile/app/viewmodels/index/index_viewmodel.dart';
import 'package:siga_mobile/app/views/unauth/index/index_logo_box.dart';
import 'package:siga_mobile/app/views/unauth/index/index_menu_bar.dart';
import 'package:siga_mobile/app/views/unauth/login/login_view.dart';

class IndexView extends StatefulWidget {
  @override
  _IndexViewState createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  bool switchCond = false;
  final _vm = GetIt.I<IndexViewModel>();
  @override
  void initState() {
    _vm.setSwitchFunction = _switchWidget;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.center,
            image: AssetImage("assets/images/student.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: WillPopScope(
            onWillPop: () async => false,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: IndexLogoFrame(logo: IndexLogoBox())),
                AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  transitionBuilder: (child, animation) => ScaleTransition(
                    child: child,
                    scale: animation,
                  ),
                  child: switchCond ? LoginView() : IndexMenuBar(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _switchWidget() {
    setState(() => switchCond = !switchCond);
  }

  // void _setIndex() {
  //   setState(() => _bodyWidget = LoginView());
  // }

  // void _setLogin() {
  //   setState(() => _bodyWidget = IndexMenuBar());
  // }
}

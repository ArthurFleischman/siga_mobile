import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/components/index_square_card.dart';
import 'package:siga_mobile/app/viewmodels/index/index_viewmodel.dart';
import 'package:siga_mobile/app/views/unauth/index/index_logo_box.dart';
import 'package:siga_mobile/app/views/unauth/index/index_menu_bar.dart';
// import 'package:siga_mobile/app/views/unauth/index/index_menu_bar.dart';
import 'package:siga_mobile/app/views/unauth/login_component/login_view.dart';

class IndexView extends StatefulWidget {
  @override
  _IndexViewState createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  final _vm = GetIt.I<IndexViewModel>();
  Widget _bodyWidget = IndexMenuBar();
  @override
  void initState() {
    _vm.setSwitchToLogin = _changeBodyWidget;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
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
                  alignment: Alignment.topLeft,
                  child: IndexLogoBox(),
                ),
                AnimatedSwitcher(
                  duration: const Duration(seconds: 2),
                  transitionBuilder: (child, animation) => ScaleTransition(
                    child: child,
                    scale: animation,
                  ),
                  child: _bodyWidget,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _changeBodyWidget() {
    setState(() => _bodyWidget = LoginView());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/components/text_button.dart';
import 'package:siga_mobile/app/core/defaults.dart';
import 'package:siga_mobile/app/viewmodels/app/app_viewmodel.dart';
import 'package:siga_mobile/app/viewmodels/home/home_viewmodel.dart';

final HomeViewmodel _homeVM = GetIt.I<HomeViewmodel>();

class HomeSettingsPage extends StatelessWidget {
  HomeSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("settings"),
          SigaTextButton(
            text: "Lgout",
            onPressed: _homeVM.logout,
          ),
          Observer(
              builder: (_) => Switch(
                  value: _homeVM.getTehemeSwitchValue,
                  onChanged: (value) => _homeVM.setThemeSwitchState(value)))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/components/index_square_card.dart';
import 'package:siga_mobile/app/viewmodels/index/index_viewmodel.dart';
import 'package:siga_mobile/app/views/unauth/index/index_logo_box.dart';

final _vm = GetIt.I<IndexViewModel>();

class IndexMenuBar extends StatelessWidget {
  const IndexMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IndexSquareCard(
              onTap: _vm.getSwitchToLogin!,
              icon: Icons.login,
              text: "Login",
            ),
            IndexSquareCard(
              onTap: () => print("ok"),
              icon: Icons.vpn_key,
              text: "Request\nAccess",
            ),
            IndexSquareCard(
              onTap: () => print("ok"),
              icon: Icons.info,
              text: "About Siga",
            ),
          ],
        ),
      ),
    );
  }
}

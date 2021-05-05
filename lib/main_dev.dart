import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/singletons.dart';
import 'package:siga_mobile/main.dart';
import 'app/core/constants.dart';

Constants _constants = GetIt.I<Constants>();
void main() async {
  registerSingletons();
  _constants.setEnv = ENV.DEV;

  mainEntry();
}

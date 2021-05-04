import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/app/core/singletons.dart';
import 'package:siga_mobile/main.dart';

Constants _constants = GetIt.I<Constants>();
void main() {
  registerSingletons();
  _constants.setEnv = ENV.PRD;
  mainEntry();
}

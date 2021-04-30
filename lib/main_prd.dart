import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/main.dart';

void main() {
  Constants().setEnv(ENV.PRD);
  mainEntry();
}

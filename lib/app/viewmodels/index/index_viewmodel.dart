import 'package:mobx/mobx.dart';

part 'index_viewmodel.g.dart';

class IndexViewModel = _IndexViewModelBase with _$IndexViewModel;

abstract class _IndexViewModelBase with Store {
  void Function()? _switchToLogin;
  set setSwitchToLogin(void Function() function) => _switchToLogin = function;
  void Function()? get getSwitchToLogin => _switchToLogin;
}

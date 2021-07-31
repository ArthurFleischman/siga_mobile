import 'package:mobx/mobx.dart';

part 'index_viewmodel.g.dart';

class IndexViewModel = _IndexViewModelBase with _$IndexViewModel;

abstract class _IndexViewModelBase with Store {
  void Function()? _switchView;
  set setSwitchFunction(void Function() function) => _switchView = function;
  void Function()? get getSwitchfunction => _switchView;
}

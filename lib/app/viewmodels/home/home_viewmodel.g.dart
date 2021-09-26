// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewmodel on _HomeViewmodelBase, Store {
  final _$_themeSwitchStateAtom =
      Atom(name: '_HomeViewmodelBase._themeSwitchState');

  @override
  bool get _themeSwitchState {
    _$_themeSwitchStateAtom.reportRead();
    return super._themeSwitchState;
  }

  @override
  set _themeSwitchState(bool value) {
    _$_themeSwitchStateAtom.reportWrite(value, super._themeSwitchState, () {
      super._themeSwitchState = value;
    });
  }

  final _$_pageIndexAtom = Atom(name: '_HomeViewmodelBase._pageIndex');

  @override
  int get _pageIndex {
    _$_pageIndexAtom.reportRead();
    return super._pageIndex;
  }

  @override
  set _pageIndex(int value) {
    _$_pageIndexAtom.reportWrite(value, super._pageIndex, () {
      super._pageIndex = value;
    });
  }

  final _$_HomeViewmodelBaseActionController =
      ActionController(name: '_HomeViewmodelBase');

  @override
  void setpageIndex(int index) {
    final _$actionInfo = _$_HomeViewmodelBaseActionController.startAction(
        name: '_HomeViewmodelBase.setpageIndex');
    try {
      return super.setpageIndex(index);
    } finally {
      _$_HomeViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setThemeSwitchState(bool value) {
    final _$actionInfo = _$_HomeViewmodelBaseActionController.startAction(
        name: '_HomeViewmodelBase.setThemeSwitchState');
    try {
      return super.setThemeSwitchState(value);
    } finally {
      _$_HomeViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

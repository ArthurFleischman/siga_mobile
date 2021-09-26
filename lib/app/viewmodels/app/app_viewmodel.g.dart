// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppViewModel on _AppViewModelBase, Store {
  final _$_appThemeAtom = Atom(name: '_AppViewModelBase._appTheme');

  @override
  String get _appTheme {
    _$_appThemeAtom.reportRead();
    return super._appTheme;
  }

  @override
  set _appTheme(String value) {
    _$_appThemeAtom.reportWrite(value, super._appTheme, () {
      super._appTheme = value;
    });
  }

  final _$_AppViewModelBaseActionController =
      ActionController(name: '_AppViewModelBase');

  @override
  void changeTheme() {
    final _$actionInfo = _$_AppViewModelBaseActionController.startAction(
        name: '_AppViewModelBase.changeTheme');
    try {
      return super.changeTheme();
    } finally {
      _$_AppViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

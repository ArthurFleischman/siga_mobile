// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginViewmodel on _LoginViewmodelBase, Store {
  final _$_isLoginAtom = Atom(name: '_LoginViewmodelBase._isLogin');

  @override
  bool get _isLogin {
    _$_isLoginAtom.reportRead();
    return super._isLogin;
  }

  @override
  set _isLogin(bool value) {
    _$_isLoginAtom.reportWrite(value, super._isLogin, () {
      super._isLogin = value;
    });
  }

  final _$_LoginViewmodelBaseActionController =
      ActionController(name: '_LoginViewmodelBase');

  @override
  void _setLogin(bool state) {
    final _$actionInfo = _$_LoginViewmodelBaseActionController.startAction(
        name: '_LoginViewmodelBase._setLogin');
    try {
      return super._setLogin(state);
    } finally {
      _$_LoginViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

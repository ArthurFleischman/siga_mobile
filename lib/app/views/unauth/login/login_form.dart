import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/components/login_form_field.dart';
import 'package:siga_mobile/app/viewmodels/login/login_viewmodel.dart';

class LoginForm extends StatelessWidget {
  final _loginVm = GetIt.I<LoginViewmodel>();
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          LoginFormField(
            hintText: "CPF: (only numbers)",
            validator: _validateCPF,
            showCharCounter: MaxLengthEnforcement.enforced,
            numberOfChar: 14,
            inputType: TextInputType.number,
            formaterList: [
              FilteringTextInputFormatter.digitsOnly,
              CpfInputFormatter()
            ],
            controller: _username,
          ),
          LoginFormField(
            hintText: "Password",
            validator: _validatePassword,
            showCharCounter: MaxLengthEnforcement.none,
            inputType: TextInputType.visiblePassword,
            isPassword: true,
            controller: _password,
          ),
          Observer(
            builder: (_) => TextButton(
              onPressed: _loginVm.isLogin
                  ? null
                  : () async {
                      FocusScope.of(context).unfocus();
                      if (_formKey.currentState!.validate())
                        await _loginVm.login(
                            context,
                            _username.text.replaceAll(
                                RegExp(CPFValidator.STRIP_REGEX), ''),
                            _password.text);
                    },
              child: Text("login"),
            ),
          ),
        ],
      ),
    );
  }

  String? _validateCPF(String? value) =>
      !UtilBrasilFields.isCPFValido(value) ? "cpf is invalid" : null;
  String? _validatePassword(String? value) =>
      value!.isEmpty ? "password cannot be empty" : null;
}

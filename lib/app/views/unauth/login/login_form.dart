import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siga_mobile/app/components/login_form_field.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          LoginFormField(
            hintText: "CPF: (only numbers)",
            controller: _controller,
            validator: _validateCPF,
            showCharCounter: MaxLengthEnforcement.enforced,
            numberOfChar: 14,
            inputType: TextInputType.number,
            formaterList: [
              FilteringTextInputFormatter.digitsOnly,
              CpfInputFormatter()
            ],
          ),
          TextFormField(),
          TextButton(
            onPressed: () => print("OK"),
            child: Text("login"),
          ),
        ],
      ),
    );
  }

  String? _validateCPF(String? value) =>
      UtilBrasilFields.isCPFValido(value) ? "cpf is invalid" : null;
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginFormField extends StatelessWidget {
  final int? numberOfChar;
  final MaxLengthEnforcement showCharCounter;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final List<TextInputFormatter>? formaterList;
  final bool? isPassword;
  final hintText;

  const LoginFormField(
      {Key? key,
      required this.validator,
      this.hintText,
      this.controller,
      required this.showCharCounter,
      this.numberOfChar,
      this.inputType,
      this.formaterList,
      this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      maxLength: numberOfChar,
      maxLengthEnforcement: showCharCounter,
      validator: validator,
      controller: controller,
      keyboardType: inputType,
      inputFormatters: formaterList,
      obscureText: isPassword != null ? isPassword! : false,
      decoration: InputDecoration(
        // border: InputBorder.none,
        // focusedBorder: InputBorder.none,
        // enabledBorder: InputBorder.none,
        // errorBorder: InputBorder.none,
        // disabledBorder: InputBorder.,
        contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        hintText: hintText,
      ),
    );
  }
}

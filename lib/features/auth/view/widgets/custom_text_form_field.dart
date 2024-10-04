import 'package:flutter/material.dart';
import 'package:textdetection/core/utils/validation.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.hint,
    this.isPassword = false,
    this.controller,
    this.validate,
  });

  final String hint;
  final bool isPassword;
  final String? validate;
  TextEditingController? controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    // controller = controller ?? TextEditingController();
    final GlobalKey<FormFieldState> fieldKey = GlobalKey<FormFieldState>();

    return TextFormField(
      key: fieldKey,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hint,
        border: OutlineInputBorder(),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: isObscured
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
                onPressed: () {
                  //TODO state bloc
                  setState(() {
                    isObscured = !isObscured;
                  });
                },
              )
            : null,
      ),
      obscureText: widget.isPassword ? isObscured : false,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      onEditingComplete: () {
        print(
            "onEditingComplete: ${customValidate(value: widget.controller!.text)}");
      },
      onChanged: (value) {
        print("onChanged:");
        print("fieldKey.currentState");
        // fieldKey.currentState?.validate();
        print(fieldKey.currentState?.hasError);
        print(fieldKey.currentState?.errorText);
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) {
        print("validator");
        print("${customValidate(value: widget.controller!.text)}");
        return customValidate(value: widget.controller!.text);
      },
    );
  }
}

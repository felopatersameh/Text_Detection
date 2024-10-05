import 'package:flutter/material.dart';

import '../../../../core/constant/string.dart';
import '../../../../core/utils/Widget/build_text_button.dart';
import '../widgets/form_register.dart';

late double screenWidth;
late double textScaleFactor;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(context),
    );
  }

  CustomScrollView _buildBody(BuildContext context) {
    return CustomScrollView(
      slivers: [
        FormRegister(),
        BuildTextButton(
          text1: AppString.rememberPassword,
          text2: AppString.loginNow,
          onPressedText2: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

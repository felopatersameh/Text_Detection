import 'package:flutter/material.dart';
import '../widgets/back_arrow.dart';
import '../widgets/form_new_password.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context),
      body: FormNewPassword(),
      resizeToAvoidBottomInset: false,
    );
  }
}




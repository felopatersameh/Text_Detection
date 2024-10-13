import 'package:flutter/material.dart';
import '../widgets/Body/body_new_password.dart';
import '../widgets/back_arrow.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context),
      body: BodyNewPassword(),
    );
  }
}




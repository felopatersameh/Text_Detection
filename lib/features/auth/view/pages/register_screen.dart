import 'package:flutter/material.dart';
import '../widgets/back_arrow.dart';
import '../widgets/body_register.dart';

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
      appBar: backArrow(context),
      body: BodyRegister(),
      resizeToAvoidBottomInset: false,
    );
  }

}

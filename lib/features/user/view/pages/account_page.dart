import 'package:flutter/material.dart';
import '../widgets/user_body_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: UserBody()),
    );
  }
}

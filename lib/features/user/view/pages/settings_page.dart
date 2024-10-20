import 'package:flutter/material.dart';
import 'package:textdetection/core/constant/string.dart';
import 'package:textdetection/features/user/view/widgets/settings_body.dart';
import '../../../auth/view/widgets/back_arrow.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context, title: AppString.accountSettingsHeader),
      body: SettingsBody(),
    );
  }

}

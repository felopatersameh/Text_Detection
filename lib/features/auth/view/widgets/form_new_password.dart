import 'package:flutter/material.dart';
import 'package:textdetection/Config/Route/app_route.dart';
import '../../../../core/constant/field_id_password.dart';
import "../../../../core/utils/Widget/build_default_button.dart";
import '../../../../core/constant/string.dart';
import '../../../../core/constant/text_style.dart';
import '../../../../core/utils/Widget/password_text__form_field.dart';

class FormNewPassword extends StatefulWidget {
  const FormNewPassword({super.key});

  @override
  State<FormNewPassword> createState() => _FormNewPasswordState();
}

class _FormNewPasswordState extends State<FormNewPassword> {
  final newPasswordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.only(left: 32.5, right: 32.5, top: 16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppString.createNewPasswordHeader,
                maxLines: AppString.createNewPasswordHeader.length,
                style: AppTextStyles.style30(),
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              AppString.createNewPasswordMessage,
              style: AppTextStyles.style14(),
              maxLines: AppString.createNewPasswordMessage.length,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomPasswordTextFromField(
              controller: newPasswordController,
              fieldId: FieldIdPassword.changePassword1,
              isLogin: false,
            ),
            CustomPasswordTextFromField(
              controller: newPasswordController,
              fieldId: FieldIdPassword.changePassword2,
              isLogin: false,
              hintText: AppString.confirmPasswordHint,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: BuildCustomButton(
                text: AppString.resetPasswordHint,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.passwordChanged);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

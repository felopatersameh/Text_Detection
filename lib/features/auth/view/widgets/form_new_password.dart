import 'package:flutter/material.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/constant/text_style.dart';
import '../../../../core/utils/Widget/password_text__form_field.dart';

class FormNewPassword extends StatelessWidget {
  FormNewPassword({super.key});

  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.only(left: 32.5, right: 32.5, top: 57),
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
              fieldId: "ChangePassword",
              isLogin: false,
            ),
            CustomPasswordTextFromField(
              controller: newPasswordController,
              fieldId: "SecondChangePassword",
              isLogin: false,
              hintText: AppString.confirmPasswordHint,
            ),
          ],
        ),
      ),
    );
  }
}

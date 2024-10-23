import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/Config/Route/app_route.dart';
import '../../../../../core/constant/enums.dart';
import '../../../../../core/constant/field_id_password.dart';
import "../../../../../core/utils/Widget/build_default_button.dart";
import '../../../../../core/constant/string.dart';
import '../../../../../core/constant/text_style.dart';
import '../../../../../core/utils/Widget/custom_messages.dart';
import '../../../../../core/utils/Widget/password_text__form_field.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.createNewPasswordHeader,
            maxLines: AppString.createNewPasswordHeader.length,
            style: AppTextStyles.style30(),
          ),
          12.verticalSpace,
          Text(
            AppString.createNewPasswordMessage,
            style: AppTextStyles.style14(),
            maxLines: AppString.createNewPasswordMessage.length,
            overflow: TextOverflow.ellipsis,
          ),
          32.verticalSpace,
          CustomPasswordTextFromField(
            controller: newPasswordController,
            fieldId: FieldIdPassword.changePassword1,
            isLogin: false,
          ),
          CustomPasswordTextFromField(
            controller: confirmPasswordController,
            fieldId: FieldIdPassword.changePassword2,
            isLogin: false,
            hintText: AppString.confirmPasswordHint,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 32).r,
            child: BuildCustomButton(
              text: AppString.resetPasswordHint,
              onPressed: () {
                if (keyForm.currentState?.validate() == true) {
                  if (confirmPasswordController.text ==
                      newPasswordController.text) {
                    Navigator.pushNamed(context, AppRoutes.passwordChanged);
                  } else {
                    customMessages(
                      context,
                      massageState: MessageState.error,
                      massage: AppString.errorSimilarPassword,
                    );
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

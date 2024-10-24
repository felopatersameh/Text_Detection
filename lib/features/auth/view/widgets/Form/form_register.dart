import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textdetection/core/utils/Validation/custom_validation.dart';
import 'package:textdetection/features/auth/view_model/authentication/authentication_cubit.dart';
import '../../../../../core/constant/enums.dart';
import '../../../../../core/constant/field_id_password.dart';
import '../../../../../core/utils/Widget/custom_messages.dart';
import '../../../model/register_model.dart';
import '../../../../../core/constant/app_constants.dart';
import '../../../../../core/utils/Validation/validate_email_password.dart';
import '../../../../../core/constant/string.dart';
import '../../../../../core/utils/Widget/build_default_button.dart';
import '../../../../../core/utils/Widget/password_text__form_field.dart';

import '../custom_text_form_field.dart';
import '../build_otp_content.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: AppConstants.customFormPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildContentHeader(
              textHeader: AppString.registerHeader,
            ),
            CustomTextFormField(
              hint: AppString.userNameHint,
              controller: usernameController,
              validator: (p0) => customValidate(
                value: p0 ?? "",
                titleCheck: AppString.userNameHint,
                minLength: 5,
                maxLength: 20,
              ),
            ),
            12.verticalSpace,
            CustomTextFormField(
              hint: AppString.emailHint,
              controller: emailController,
              validator: (p0) => validateEmailOrPassword(input: p0),
            ),
            const SizedBox(
              height: 12,
            ),
            CustomPasswordTextFromField(
              controller: passwordController,
              fieldId: FieldIdPassword.password1Register,
              isLogin: false,
            ),
            12.verticalSpace,
            CustomPasswordTextFromField(
              hintText: AppString.confirmPasswordHint,
              controller: confirmController,
              fieldId: FieldIdPassword.password2Register,
              isLogin: false,
            ),
            12.verticalSpace,
            BuildCustomButton(
              text: AppString.registerName,
              onPressed: () {
                final account = RegisterModel(
                  name: usernameController.text,
                  email: emailController.text,
                  password: passwordController.text,
                );
                if (keyForm.currentState?.validate() == true) {
                  if (confirmController.text == passwordController.text) {
                    Navigator.of(context).pop(context);
                    context.read<AuthenticationCubit>().createAccount(account);
                    customMessages(
                      context,
                      massageState: MessageState.succeed,
                      massage: AppString.succeedRegister,
                    );
                    // ToDO:Massage register is done
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
          ],
        ),
      ),
    );
  }
}

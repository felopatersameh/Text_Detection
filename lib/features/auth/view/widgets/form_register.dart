import 'package:flutter/material.dart';
import '../../../../core/utils/Validation/email_validate.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/constant/text_style.dart';
import '../../../../core/utils/Widget/build_default_button.dart';
import '../../../../core/utils/Widget/password_text__form_field.dart';

import '../widgets/custom_text_form_field.dart';

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
    return SliverToBoxAdapter(
      child: Form(
        key: keyForm,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: EdgeInsets.only(left: 32.5, right: 32.5, top: 57),
          child: Column(
            children: [
              Text(
                AppString.registerHeader,
                maxLines: AppString.loginHeader.length,
                style: AppTextStyles.style32(),
              ),
              SizedBox(
                height: 32,
              ),
              CustomTextFormField(
                hint: AppString.userNameHint,
                controller: usernameController,
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextFormField(
                hint: AppString.emailHint,
                controller: emailController,
                validator: (p0) => validateEmail(email: p0),
              ),
              SizedBox(
                height: 12,
              ),
              CustomPasswordTextFromField(
                controller: passwordController,
              ),
              SizedBox(
                height: 12,
              ),
              CustomPasswordTextFromField(
                controller: confirmController,
              ),
              SizedBox(
                height: 32,
              ),
              BuildCustomButton(
                text: AppString.registerName,
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


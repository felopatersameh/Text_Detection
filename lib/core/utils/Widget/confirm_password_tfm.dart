import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constant/icons.dart';
import '../../constant/string.dart';
import '../Validation/password_validate.dart';
import '../../../features/auth/view_model/PasswordVisibility/password_visibility_cubit.dart';
import '../../../features/auth/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomConfirmPasswordTextFromField extends StatelessWidget {
  final TextEditingController controller;
  // final String hintText;
  const CustomConfirmPasswordTextFromField({super.key, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordVisibilityCubit, bool>(
      builder: (context, state) {
        return CustomTextFormField(
          suffixIcon: IconButton(
            icon: Icon(
              state
                  ? AppIcons.passwordVisibility
                  : AppIcons.passwordVisibilityOff,
            ),
            onPressed: () {
              context
                  .read<PasswordVisibilityCubit>()
                  .togglePasswordVisibility();
            },
          ),
          controller: controller,
          hint: AppString.confirmPasswordHint,
          isPassword: !state,
          validator: (p0) => validatePassword(false, password: p0),
        );
      },
    );
  }
}

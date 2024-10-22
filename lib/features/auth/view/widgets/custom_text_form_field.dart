import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textdetection/core/constant/text_style.dart';

import '../../../../core/constant/app_constants.dart';
import '../../../../core/constant/colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;

  const CustomTextFormField({
    super.key,
    required this.hint,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.suffixIcon,
  });

  @override
  State<StatefulWidget> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15).r,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          errorMaxLines: 3,
          hintText: widget.hint,
          // hintMaxLines:widget.hint.characters.length ,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: AppConstants.defaultCircularBorder),
          hintStyle: AppTextStyles.style16W500(),
          suffixIcon: widget.suffixIcon,
          filled: true,
          fillColor: AppColors.offWhite,
        ),
        obscureText: widget.isPassword,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        // onEditingComplete:()
        // {},
        // onChanged: (value) {},
        validator: widget.validator,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textdetection/core/constant/app_constants.dart';
import 'package:textdetection/core/constant/app_images.dart';
import 'package:textdetection/core/constant/colors.dart';
import 'package:textdetection/core/utils/Widget/form_new_password.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cream,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: 19,
            height: 19,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                '${AppImages.svgPath}back_arrow.svg',
              ),
            ),
          ),
        ),
      ),
      body: _buildBody(context),
      resizeToAvoidBottomInset: false,
    );
  }
}

SafeArea _buildBody(BuildContext context) {
  return SafeArea(
    child: Column(
      children: [
        FormNewPassword(),
      ],
    ),
  );
}

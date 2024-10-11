import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/colors.dart';
import '../widgets/form_new_password.dart';

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
    child:FormNewPassword(),

  );
}

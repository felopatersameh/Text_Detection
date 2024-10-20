import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_constants.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/utils/Validation/custom_validation.dart';
import '../../../../core/utils/Widget/build_default_button.dart';
import '../../../../generated/assets.dart';
import '../../../auth/view/widgets/custom_text_form_field.dart';


class SettingsBody extends StatelessWidget {
  SettingsBody({super.key});

  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  // final _imageUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        shrinkWrap: true,
        physics: const RangeMaintainingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppConstants.userVerticalSpace60,
                CustomExpansionTileWidget(
                  title: AppString.changeUserName,
                  subtitle: "Current Username",
                  assetName: Assets.pngProfile,
                  controller: _nameController,
                  hint: AppString.userNameHint,
                  validator: (value) => customValidate(value: value!),
                ),
                AppConstants.userVerticalSpace30,
                CustomExpansionTileWidget(
                  title: AppString.changePassword,
                  subtitle: "********",
                  leadingIcon: Icon(Icons.lock),
                  controller: _passwordController,
                  hint: "Enter your new password",
                  validator: (value) => customValidate(value: value ?? ""),
                ),
                AppConstants.userVerticalSpace30,
                CustomExpansionTileWidget(
                  child: ListTile(
                    title: Text(AppString.changePhoto),
                    tileColor: Colors.white,
                    leading: Icon(Icons.image_outlined),
                    shape: RoundedRectangleBorder(
                        borderRadius: AppConstants.materialUserCircularDefault),
                    onTap: () {
                      //Todo Image picker Package
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          fillOverscroll: true,
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: BuildCustomButton(
                text: AppString.saveSettingsScreenTitle,
                onPressed: () {
                  // if (_nameController.text.isNotEmpty) {
                  //   context
                  //       .read<AccountSettingsCubit>()
                  //       .changeUserName(_nameController.text);
                  // }
                  //
                  // if (_passwordController.text.isNotEmpty &&
                  //     _passFormKey.currentState!.validate()) {
                  //   context
                  //       .read<AccountSettingsCubit>()
                  //       .changePassword(_passwordController.text);
                  // }
                  // if (_imageUrlController.text.isNotEmpty) {
                  //   context
                  //       .read<AccountSettingsCubit>()
                  //       .changePassword(_imageUrlController.text);
                  // }
                  //
                  // /// Todo this image here is for test only
                  // context
                  //     .read<AccountSettingsCubit>()
                  //     .changeImage(Assets.pngWelcome3);
                  //
                  // ///
                  // _nameController.clear();
                  // _passwordController.clear();
                  // _imageUrlController.clear();
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomExpansionTileWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? assetName;
  final TextEditingController? controller;
  final String? hint;
  final String? Function(String?)? validator;
  final Widget? leadingIcon;
  final List<Widget>? children;
  final Widget? child;

  const CustomExpansionTileWidget({
    super.key,
    this.title,
    this.subtitle,
    this.assetName,
    this.controller,
    this.hint,
    this.validator,
    this.leadingIcon,
    this.children,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: AppConstants.userElevation2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.w),
      ),
      child: child ??
          ExpansionTile(
            title: Text(title ?? ""),
            subtitle: subtitle?.isNotEmpty == false
                ? Text(
                    subtitle ?? "",
                    style: TextStyle(color: AppColors.mediumGray),
                  )
                : null,
            backgroundColor: AppColors.lightBlueGray,
            collapsedBackgroundColor: Colors.white,
            leading: leadingIcon ??
                (assetName != null ? SvgPicture.asset(assetName!) : null),
            shape: RoundedRectangleBorder(
                borderRadius: AppConstants.materialUserCircularDefault),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  child: CustomTextFormField(
                    hint: hint ?? "",
                    controller: controller,
                    validator: validator,
                  ),
                ),
              ),
              if (children != null) ...children!,
            ],
          ),
    );
  }
}

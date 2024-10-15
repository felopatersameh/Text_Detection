import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textdetection/core/constant/app_images.dart';
import 'package:textdetection/core/constant/string.dart';
import 'package:textdetection/core/utils/Validation/custom_validation.dart';
import 'package:textdetection/core/utils/Widget/build_default_button.dart';
import 'package:textdetection/core/utils/extension/responsive/responsive_extension.dart';
import 'package:textdetection/features/user/view_model/account_settings/account_settings_cubit.dart';

import '../../../../core/constant/assets.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/utils/Widget/password_text__form_field.dart';
import '../../../auth/view/widgets/back_arrow.dart';
import '../../../auth/view/widgets/custom_text_form_field.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:backArrow(context,title: AppString.accountSettingsHeader),
      body: _buildBody(context),
      resizeToAvoidBottomInset: false,
    );
  }

  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _imageUrlController = TextEditingController();
  final GlobalKey<FormState> _passFormKey = GlobalKey<FormState>();

  Widget _buildBody(BuildContext context) {
    SizeConfig.init(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              children: [
                60.h.verticalSpace,
                Material(
                  elevation: 4.w,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.w),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      "Change User Name",
                    ),
                    subtitle: Text(
                      // UserDataModel.name,
                      context.watch<AccountSettingsCubit>().state.name,
                      style: TextStyle(color: AppColors.mediumGray),
                    ),
                    backgroundColor: Colors.amberAccent,
                    collapsedBackgroundColor: Colors.white,
                    leading: SvgPicture.asset(AppAssets.accountEmail),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.w)),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Form(
                          autovalidateMode: AutovalidateMode.onUnfocus,
                          child: CustomTextFormField(
                            hint: "Enter Your Name",
                            controller: _nameController,
                            validator: (p0) {
                              return customValidate(value: p0.toString());
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                30.h.verticalSpace,
                Material(
                  elevation: 4.w,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.w)),
                  child: ExpansionTile(
                    title: Text(
                      "Change Password",
                    ),
                    backgroundColor: Colors.orangeAccent,
                    collapsedBackgroundColor: Colors.white,
                    leading: Icon(Icons.lock),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.w)),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Form(
                          key: _passFormKey,
                          autovalidateMode: AutovalidateMode.onUnfocus,
                          child: CustomPasswordTextFromField(
                            controller: _passwordController,
                            fieldId: "settingsPass",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                30.h.verticalSpace,
                Material(
                  elevation: 4.w,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.w)),
                  child: ListTile(
                    title: Text("Change Profile Image"),
                    tileColor: Colors.white,
                    leading: Icon(Icons.image_outlined),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.w)),
                    onTap: () {},
                  ),
                ),
                30.h.verticalSpace,
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: BuildCustomButton(
              text: "Save Changes",
              onPressed: () {
                if (_nameController.text.isNotEmpty) {
                  context
                      .read<AccountSettingsCubit>()
                      .changeUserName(_nameController.text);
                }

                if (_passwordController.text.isNotEmpty && _passFormKey.currentState!.validate()) {
                  context
                      .read<AccountSettingsCubit>()
                      .changePassword(_passwordController.text);
                }
                if (_imageUrlController.text.isNotEmpty) {
                  context
                      .read<AccountSettingsCubit>()
                      .changePassword(_imageUrlController.text);
                }

                /// Todo this image here is for test only
                context
                    .read<AccountSettingsCubit>()
                    .changeImage("${AppImages.pngPath}welcome3.png");

                ///
                _nameController.clear();
                _passwordController.clear();
                _imageUrlController.clear();
              },
            ),
          )
        ],
      ),
    );
  }
}

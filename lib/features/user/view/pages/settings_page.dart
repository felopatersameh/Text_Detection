import 'package:flutter/material.dart';
import 'package:textdetection/core/constant/string.dart';
import 'package:textdetection/features/user/view/widgets/settings_body.dart';
import '../../../auth/view/widgets/back_arrow.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context, title: AppString.accountSettingsHeader),
      body: SettingsBody(),
      resizeToAvoidBottomInset: false,
    );
  }

// final _passwordController = TextEditingController();
// final _nameController = TextEditingController();
// final _imageUrlController = TextEditingController();
// final GlobalKey<FormState> _passFormKey = GlobalKey<FormState>();

// Widget _buildBody(BuildContext context) {
//   return Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Expanded(
//           child: ListView(
//             shrinkWrap: true,
//             padding: EdgeInsets.symmetric(horizontal: 40.w),
//             children: [
//               AppConstants.userVerticalSpace60,
//               Material(
//                 elevation: AppConstants.userElevation2,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(6.w),
//                 ),
//                 child: ExpansionTile(
//                   title: Text(
//                     "Change User Name",
//                   ),
//                   subtitle: Text(
//                     // UserDataModel.name,
//                     context.watch<AccountSettingsCubit>().state.name,
//                     style: TextStyle(color: AppColors.mediumGray),
//                   ),
//                   backgroundColor: AppColors.lightBlueGray,
//                   collapsedBackgroundColor: Colors.white,
//                   leading: SvgPicture.asset(Assets.pngProfile),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: AppConstants.materialUserCircularDefault),
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 12.w),
//                       child: Form(
//                         autovalidateMode: AutovalidateMode.onUnfocus,
//                         child: CustomTextFormField(
//                           hint: "Enter Your Name",
//                           controller: _nameController,
//                           validator: (p0) {
//                             return customValidate(value: p0.toString());
//                           },
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               AppConstants.userVerticalSpace30,
//               Material(
//                 elevation: AppConstants.userElevation2,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: AppConstants.materialUserCircularDefault),
//                 child: ExpansionTile(
//                   title: Text(
//                     "Change Password",
//                   ),
//                   backgroundColor: AppColors.lightBlueGray,
//                   collapsedBackgroundColor: Colors.white,
//                   leading: Icon(Icons.lock),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: AppConstants.materialUserCircularDefault),
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 12.w),
//                       child: Form(
//                         key: _passFormKey,
//                         autovalidateMode: AutovalidateMode.onUnfocus,
//                         child: CustomPasswordTextFromField(
//                           controller: _passwordController,
//                           fieldId: "settingsPass",
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               AppConstants.userVerticalSpace30,
//               Material(
//                 elevation: AppConstants.userElevation2,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: AppConstants.materialUserCircularDefault),
//                 child: ListTile(
//                   title: Text("Change Profile Image"),
//                   tileColor: Colors.white,
//                   leading: Icon(Icons.image_outlined),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: AppConstants.materialUserCircularDefault),
//                   onTap: () {
//                     //Todo Image picker Package
//                   },
//                 ),
//               ),
//               AppConstants.userVerticalSpace30,
//             ],
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
//           child: BuildCustomButton(
//             text: AppString.saveSettingsScreenTitle,
//             onPressed: () {
//               if (_nameController.text.isNotEmpty) {
//                 context
//                     .read<AccountSettingsCubit>()
//                     .changeUserName(_nameController.text);
//               }
//
//               if (_passwordController.text.isNotEmpty &&
//                   _passFormKey.currentState!.validate()) {
//                 context
//                     .read<AccountSettingsCubit>()
//                     .changePassword(_passwordController.text);
//               }
//               if (_imageUrlController.text.isNotEmpty) {
//                 context
//                     .read<AccountSettingsCubit>()
//                     .changePassword(_imageUrlController.text);
//               }
//
//               /// Todo this image here is for test only
//               context
//                   .read<AccountSettingsCubit>()
//                   .changeImage(Assets.pngWelcome3);
//
//               ///
//               _nameController.clear();
//               _passwordController.clear();
//               _imageUrlController.clear();
//             },
//           ),
//         )
//       ],
//     ),
//   );
// }
}

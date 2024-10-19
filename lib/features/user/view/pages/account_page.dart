import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textdetection/features/user/view/widgets/user_body_widget.dart';
import 'package:textdetection/features/user/view_model/account_settings/account_settings_cubit.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account"),
        centerTitle: true,
      ),
      body: UserBody(),
      resizeToAvoidBottomInset: false,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    // context.read<AccountSettingsCubit>().initializeUserData();
    super.initState();
  }

// Widget _buildBody(BuildContext context) {
//   SizeConfig.init(context);
//   return SingleChildScrollView(
//     child: Padding(
//       padding: EdgeInsets.symmetric(horizontal: 50.w),
//       child: Column(
//         children: [
//           20.h.verticalSpace,
//           Material(
//             shape: CircleBorder(),
//             elevation: 10.w,
//             child: CircleAvatar(
//               radius:
//                   MediaQuery.orientationOf(context) == Orientation.portrait
//                       ? 70.w
//                       : 40.w,
//               backgroundImage: AssetImage(
//                   context.watch<AccountSettingsCubit>().state.imageUrl),
//             ),
//           ),
//           20.h.verticalSpace,
//           Text(
//             context.watch<AccountSettingsCubit>().state.name,
//             style: TextStyle(fontSize: 18, color: AppColors.darkGray),
//           ),
//           30.h.verticalSpace,
//           Material(
//             elevation: 4.w,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(6.w),
//             ),
//             child: ListTile(
//               title: Text("Email"),
//               titleTextStyle: TextStyle(color: Colors.black),
//               subtitle: Text(UserDataModel.email),
//               subtitleTextStyle: TextStyle(color: AppColors.mediumGray),
//               tileColor: Colors.white,
//               leading: SvgPicture.asset(Assets.svgEmail),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(6.w)),
//               onTap: () {},
//             ),
//           ),
//           30.h.verticalSpace,
//         Material(
//           elevation: 4.w,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(6.w)),
//           child: ListTile(
//             title: Text("Themes"),
//             titleTextStyle: TextStyle(color: Colors.black),
//             subtitle: Text("Light Theme"),
//             subtitleTextStyle: TextStyle(color: AppColors.mediumGray),
//             tileColor: Colors.white,
//             leading: SvgPicture.asset(Assets.svgTheme),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(6.w)),
//             onTap: () {},
//           ),
//         ),
//           30.h.verticalSpace,
//           Material(
//             elevation: 4.w,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(6.w)),
//             child: ListTile(
//               title: Text("Language"),
//               titleTextStyle: TextStyle(color: Colors.black),
//               subtitle: Text("English"),
//               subtitleTextStyle: TextStyle(color: AppColors.mediumGray),
//               tileColor: Colors.white,
//               leading: SvgPicture.asset(Assets.svgLanguage),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(6.w)),
//               onTap: () {},
//             ),
//           ),
//           30.h.verticalSpace,
//           Material(
//             elevation: 4.w,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(6.w)),
//             child: ListTile(
//               title: Text("Account Settings"),
//               titleTextStyle: TextStyle(color: Colors.black),
//               tileColor: Colors.white,
//               leading: SvgPicture.asset(Assets.svgSettings),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(6.w)),
//               onTap: () {
//                 Navigator.pushNamed(context, AppRoutes.accountSettingsScreen);
//               },
//             ),
//           ),
//           30.h.verticalSpace,
//         ],
//       ),
//     ),
//   );
// }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textdetection/features/auth/view/pages/register_screen.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/utils/Widget/build_login_with_container.dart';
import '../../../../core/utils/Widget/build_text_button.dart';
import '../widgets/custom_or_login_register_widget.dart';
import '../widgets/form_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 72.0,
        backgroundColor: AppColors.cream,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: 19,
            height: 19,
            margin: EdgeInsets.only(left: 32.0, top: 7.0, bottom: 8.0),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: AppColors.cream),
            child: SvgPicture.asset(
              '${AppImages.svgPath}back_arrow.svg',
              height: 12.0,
              width: 12.0,
            ),
          ),
        ),
      ),
      body: _buildBody(context),
      resizeToAvoidBottomInset: false,
    );
  }

  SafeArea _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          FormLogin(),
          const SizedBox(
            height: 32.0,
          ),
          CustomOrLoginRegisterWidget(
            orWithText: Text(AppString.orLoginWith.toString()),
          ),
          BuildLoginWithContainer(),
          BuildTextButton(
            text1: AppString.dontHaveAnAccount,
            text2: AppString.registerNow,
            onPressedText2: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterScreen(),
                  ));
            },
          )
        ],
      ),
    );

    // CustomScrollView(
    //   slivers: [
    //     FormLogin(),
    //     BuildTextButton(
    //       text1: AppString.haveAnAccount,
    //       text2: AppString.registerNow,
    //       onPressedText2: () {
    //         Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => RegisterScreen(),
    //             ));
    //       },
    //     )
    //   ],
    // ),
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:textdetection/core/constant/assets.dart';

import '../../../features/auth/view/widgets/custom_login_with_container.dart';

class BuildLoginWithContainer extends StatelessWidget {
  const BuildLoginWithContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomLoginWith(
          svgPicture: SvgPicture.asset(
            AppAssets.loginWithFacebook,
            width: 26.0,
            height: 26.0,
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        CustomLoginWith(
          svgPicture: SvgPicture.asset(
            AppAssets.loginWithGoogle,
            width: 26.0,
            height: 26.0,
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        CustomLoginWith(
          svgPicture: SvgPicture.asset(
            AppAssets.loginWithApple,
            width: 26.0,
            height: 26.0,
          ),
        ),
      ],
    );
  }
}

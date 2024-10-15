import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constant/assets.dart';
import '../../../features/auth/view_model/authentication/authentication_cubit.dart';

import '../../../features/auth/view/widgets/custom_login_with_container.dart';

class BuildLoginWithContainer extends StatelessWidget {
  const BuildLoginWithContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomLoginWith(
          onPressed: () =>
              context.read<AuthenticationCubit>().loginByFacebook(),
          svgPicture: AppAssets.loginWithFacebook,
        ),
        8.verticalSpace,
        CustomLoginWith(
          onPressed: () => context.read<AuthenticationCubit>().loginByGoogle(),
          svgPicture: AppAssets.loginWithGoogle,
        ),
        8.verticalSpace,
        CustomLoginWith(
          onPressed: () => context.read<AuthenticationCubit>().loginByApple(),
          svgPicture: AppAssets.loginWithApple,
        ),
      ],
    );
  }
}

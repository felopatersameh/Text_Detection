import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        const SizedBox(
          width: 8.0,
        ),
        CustomLoginWith(
          onPressed: () => context.read<AuthenticationCubit>().loginByGoogle(),
          svgPicture: AppAssets.loginWithGoogle,
        ),
        const SizedBox(
          width: 8.0,
        ),
        CustomLoginWith(
          onPressed: () => context.read<AuthenticationCubit>().loginByApple(),
          svgPicture: AppAssets.loginWithApple,
        ),
      ],
    );
  }
}

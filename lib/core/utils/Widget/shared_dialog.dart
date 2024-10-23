import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';

showLoading(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: AppColors.black.withOpacity(0.5),
      useRootNavigator: true,
      builder: (context) {
        return CupertinoAlertDialog(
          content: Row(
            children: [
              Text('Loading...'),
              Spacer(),
              CircularProgressIndicator(
                color: AppColors.lightBlueGray,
                backgroundColor: AppColors.darkBlue,
              ),
            ],
          ),
        );
      });
}

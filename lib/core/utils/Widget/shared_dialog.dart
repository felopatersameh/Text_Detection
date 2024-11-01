import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';

hideLoading(BuildContext context) {
  Navigator.pop(context);
}

showMessage(BuildContext context,
    {String? title,
    String? body,
    String? posButtonTitle,
    String? negButtonTitle,
    Function? onPosButtonClick,
    Function? onNegButtonClick}) {
  showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: AppColors.black.withOpacity(0.5),
      useRootNavigator: true,
      builder: (context) {
        return CupertinoAlertDialog(
            title: title != null ? Text(title) : null,
            content: body != null ? Text(body) : null,
            actions: [
              if (posButtonTitle != null)
                TextButton(
                    onPressed: () {
                      onPosButtonClick?.call();
                      Navigator.pop(context);
                    },
                    child: Text(posButtonTitle)),
              if (negButtonTitle != null)
                TextButton(
                    onPressed: () {
                      onNegButtonClick?.call();
                      Navigator.pop(context);
                    },
                    child: Text(negButtonTitle))
            ]);
      });
}

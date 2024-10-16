import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/assets.dart';
import '../../constant/colors.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile(
      {super.key,
      this.title,
      this.subTitle,
      this.tileColor,
      this.leading,
      this.onTab});

  final String? title;
  final String? subTitle;
  final Color? tileColor;
  final Widget? leading;
  final GestureTapCallback? onTab;

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.w,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.w),
      ),
      child: ListTile(
        title: Text("${widget.title}"),
        subtitle: Text("${widget.subTitle}"),
        subtitleTextStyle: TextStyle(color: AppColors.mediumGray),
        tileColor: widget.tileColor ?? Colors.white,
        leading: widget.leading,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.w)),
        onTap: widget.onTab,
      ),
    );
  }
}

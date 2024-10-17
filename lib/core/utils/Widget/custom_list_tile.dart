import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/colors.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile(
      {super.key,
      this.title,
      this.subTitle,
      this.tileColor,
      this.leading,
      this.onTab,
      this.titleTextStyle,
      this.subtitleTextStyle});

  final String? title;
  final String? subTitle;
  final Color? tileColor;
  final Widget? leading;
  final GestureTapCallback? onTab;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;

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
        titleTextStyle: widget.titleTextStyle ??
            TextStyle(fontSize: 22.spMin, color: Colors.black),
        subtitle: Text("${widget.subTitle}"),
        subtitleTextStyle: widget.subtitleTextStyle ??
            TextStyle(fontSize: 20.spMin, color: AppColors.mediumGray),
        tileColor: widget.tileColor ?? Colors.white,
        leading: widget.leading,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.w)),
        onTap: widget.onTab,
      ),
    );
  }
}

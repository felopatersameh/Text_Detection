import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile({
    super.key,
    this.title,
    this.subtitle,
    this.backgroundColor,
    this.collapsedBackgroundColor,
    this.leading,
    this.onTap,
    this.titleTextStyle,
    this.subtitleTextStyle,
    required this.children,
  });

  final String? title;
  final String? subtitle;
  final Color? backgroundColor;
  final Color? collapsedBackgroundColor;
  final Widget? leading;
  final GestureTapCallback? onTap;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final List<Widget> children;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.w,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.w),
      ),
      child: ExpansionTile(
        title: Text(widget.title ?? '',
            style: widget.titleTextStyle ??
                TextStyle(fontSize: 22.spMin, color: Colors.black)),
        subtitle: widget.subtitle != null
            ? Text("${widget.subtitle}",
                style: widget.subtitleTextStyle ??
                    TextStyle(fontSize: 20.spMin, color: AppColors.mediumGray))
            : null,
        collapsedBackgroundColor:
            widget.collapsedBackgroundColor ?? Colors.white,
        backgroundColor: widget.backgroundColor ?? Colors.white,
        leading: widget.leading,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.w)),
        children: widget.children,
      ),
    );
  }
}

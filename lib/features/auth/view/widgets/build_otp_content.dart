import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/text_style.dart';

class BuildContentHeader extends StatelessWidget {
  final String textHeader;
  final String? textDescription;

  const BuildContentHeader(
      {super.key, required this.textHeader, this.textDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textHeader,
          style: AppTextStyles.style30(),
          maxLines: textHeader.length,
        ),
        12.verticalSpace,
        if (textDescription != null)
          Text(
            textDescription!,
            style: AppTextStyles.style14(),
            maxLines: textDescription!.length,
          ),
        32.verticalSpace,
      ],
    );
  }
}

import 'package:flutter/material.dart';
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
        const SizedBox(height: 12.0),
        if (textDescription != null)
          Text(
            textDescription!,
            style: AppTextStyles.style14(),
            maxLines: textDescription!.length,
          ),
        const SizedBox(height: 32.0),
      ],
    );
  }
}

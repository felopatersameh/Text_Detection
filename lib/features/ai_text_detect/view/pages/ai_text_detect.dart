import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/ai_text_detect/file_list.dart';

class AiTextDetect extends StatelessWidget {
  const AiTextDetect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 45.0.w, vertical: 40.0.h),
          child: Column(
            children: [
              FileList(),
            ],
          ),
        ),
      ),
    );
  }
}

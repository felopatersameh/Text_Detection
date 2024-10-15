import 'package:flutter/material.dart';
import 'package:textdetection/core/utils/Widget/custom_back_button.dart';
import 'package:textdetection/features/ai_text_detect/view/widgets/ai_text_detect/upload_image_container.dart';
import '../widgets/ai_text_detect/file_list.dart';

class AiTextDetect extends StatelessWidget {
  const AiTextDetect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 40.0),
          child: Column(
            children: [
              UploadImageContainer(),
              FileList(),
            ],
          ),
        ),
      ),
    );
  }
}

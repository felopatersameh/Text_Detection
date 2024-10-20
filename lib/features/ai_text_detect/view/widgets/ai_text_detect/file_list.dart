import 'package:flutter/material.dart';
import 'package:textdetection/Config/Route/app_route.dart';
import 'package:textdetection/features/ai_text_detect/view/widgets/ai_text_detect/upload_process.dart';

import '../../../../../core/constant/colors.dart';
import '../../../../../core/utils/Widget/build_default_button.dart';

class FileList extends StatelessWidget {
  const FileList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 20),
            child: Text(
              "Files",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const UploadProcess(),
              itemCount: 3,
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
            ),
          ),
          BuildCustomButton(
            text: "Confirm",
            color: AppColors.darkBlue,
            height: 0.12,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.extractedTextScreen);
            },
          ),
        ],
      ),
    );
  }
}

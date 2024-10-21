import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textdetection/Config/Route/app_route.dart';
import 'package:textdetection/features/ai_text_detect/view/widgets/ai_text_detect/upload_image_container.dart';
import 'package:textdetection/features/ai_text_detect/view/widgets/ai_text_detect/upload_process.dart';

import '../../../../../core/constant/app_constants.dart';
import '../../../../../core/constant/colors.dart';
import '../../../../../core/constant/text_style.dart';
import '../../../../../core/utils/Widget/build_default_button.dart';

class FileList extends StatefulWidget {
  const FileList({super.key});

  @override
  State<FileList> createState() => _FileListState();
}

class _FileListState extends State<FileList> {
  List<String> files = [];

  void addFile(String fileName) {
    setState(() {
      files.add(fileName);
    });
  }

  void removeFile(int index) {
    setState(() {
      files.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UploadImageContainer(onFilePicked: addFile),

          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 20).r,
            child: Text(
              "Files",
                style: AppTextStyles.style16xW700()
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => UploadProcess(
                fileName: files[index],
                onCancel: () => removeFile(index),
              ),
              itemCount: files.length,
              separatorBuilder: (context, index) => AppConstants.userVerticalSpace20,
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

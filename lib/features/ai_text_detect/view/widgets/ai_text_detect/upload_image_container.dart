
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import 'package:textdetection/core/constant/assets.dart';
import '../../../../../core/constant/colors.dart';
import '../../../../../core/utils/Widget/build_default_button.dart';

class UploadImageContainer extends StatelessWidget {
  const UploadImageContainer({super.key });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      decoration: const BoxDecoration(
          border: DashedBorder.fromBorderSide(
              dashLength: 15,
              side: BorderSide(color: AppColors.cornFlowerPrimary, width: 2)
          ),
          borderRadius: BorderRadius.all(Radius.circular(2))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.search,
            height: 100,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "Drag or drop file here\n- OR -",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.blueGary,
              ),
            ),
          ),
              BuildCustomButton(
                text: "Choose File",
                color: AppColors.drakBlue,
                height: 0.1,
                width: 0.5,
                onPressed: () async {
                  FilePickerResult? result = await FilePicker.platform.pickFiles(
                    type: FileType.custom,
                    allowedExtensions: ['jpg', 'png', 'jpeg','pdf','doc'],
                  );
                  if (result != null) {
                    PlatformFile file = result.files.first;
                    print(file.name);
                    print(file.bytes);
                    print(file.size);
                    print(file.extension);
                    print(file.path);
                  } else {
                    // User canceled the picker
                  }
                },
          ),
        ],
      ),
    );
  }
}

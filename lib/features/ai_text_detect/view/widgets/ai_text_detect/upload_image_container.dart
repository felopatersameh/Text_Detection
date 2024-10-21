
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import '../../../../../core/constant/colors.dart';
import '../../../../../core/utils/Widget/build_default_button.dart';
import '../../../../../generated/assets.dart';

class UploadImageContainer extends StatelessWidget {
  final Function(String) onFilePicked;

  const UploadImageContainer({super.key, required this.onFilePicked});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      decoration: const BoxDecoration(
        border: DashedBorder.fromBorderSide(
          dashLength: 15,
          side: BorderSide(color: AppColors.cornFlowerPrimary, width: 2),
        ),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.pngSearch,
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
            color: AppColors.darkBlue,
            height: 0.1,
            width: 0.5,
            onPressed: () async {
              FilePickerResult? result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['jpg', 'png', 'jpeg', 'pdf', 'doc'],
              );
              if (result != null) {
                PlatformFile file = result.files.first;
                onFilePicked(file.name); // Notify the parent about the new file
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

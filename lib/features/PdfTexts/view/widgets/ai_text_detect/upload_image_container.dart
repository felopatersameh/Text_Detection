import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import 'package:textdetection/core/constant/app_constants.dart';
import 'package:textdetection/core/constant/enums.dart';
import 'package:textdetection/core/constant/string.dart';
import 'package:textdetection/core/constant/text_style.dart';
import '../../../../../core/constant/colors.dart';
import '../../../../../core/utils/Widget/build_default_button.dart';
import '../../../../../core/utils/Widget/custom_messages.dart';
import '../../../../../generated/assets.dart';

class UploadImageContainer extends StatelessWidget {
  // File? _image;
  final Function(String) onFilePicked;

  // Future _pickedImage(ImageSource source) async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: source);
  //     if (image != null) {
  //       _image = File(image.path);
  //     }
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print("Error picking file: $e");
  //     }
  //   }
  // }

  const UploadImageContainer({super.key, required this.onFilePicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(35).r,
      decoration: BoxDecoration(
        border: DashedBorder.fromBorderSide(
          dashLength: 15.w,
          side: BorderSide(color: AppColors.cornFlowerPrimary, width: 2.w),
        ),
        borderRadius: AppConstants.defaultCircularBorder,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.pngSearch,
            height: 100.h,
            width: 100.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0.h),
            child: Text(
              "Drag or drop file here\n- OR -",
              textAlign: TextAlign.center,
              style: AppTextStyles.style16W500(),
            ),
          ),
          BuildCustomButton(
            text: AppString.fileListTitle,
            color: AppColors.darkBlue,
            height: 0.1,
            width: 0.5,
            onPressed: () async {
              try {
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  //Todo: Should be Specific.
                  allowedExtensions: ['jpg', 'png', 'jpeg', 'pdf', 'doc'],
                );
                if (result != null) {
                  PlatformFile file = result.files.first;
                  onFilePicked(file.name);
                }
              } catch (e) {
                customMessages(context,
                    massageState: MessageState.error,
                    massage: 'Error picking file');
                debugPrint("Error picking file: $e");
              }
            },
          ),
        ],
      ),
    );
  }
}

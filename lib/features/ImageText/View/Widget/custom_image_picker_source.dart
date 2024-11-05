import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/constant/icons.dart';

import '../../../../core/constant/app_constants.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/constant/text_style.dart';
import '../../ViewModel/image_cubit.dart';

TextStyle _styleTextLabel = AppTextStyles.style14Bold();

class CustomImagePickerSource extends StatelessWidget {
  const CustomImagePickerSource({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppString.imageNotSelected,
          style: AppTextStyles.style16xW700(),
        ),
        AppConstants.userVerticalSpace16,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                context.read<ImagePickerCubit>().pickImages(ImageSource.camera);
              },
              icon: AppIcons.camera,
              label: Text(
                AppString.cameraPicker,
                style: _styleTextLabel,
              ),
            ),
            AppConstants.userVerticalSpace16w,
            ElevatedButton.icon(
              onPressed: () {
                context.read<ImagePickerCubit>().pickImages(ImageSource.gallery);
              },
              icon: AppIcons.photo_library,
              label: Text(
                AppString.galleryPicker,
                style: _styleTextLabel,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

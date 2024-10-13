import 'package:flutter/material.dart';
import 'package:textdetection/features/ai_text_detect/view/pages/extracted_text.dart';
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
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0,bottom: 20),
          child: Text(
            "Files",
            style:TextStyle(
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
            separatorBuilder: ( context,  index) => const SizedBox(height: 20,),
          ),
        ),
        BuildCustomButton(
          text: "Confirm",
          color: AppColors.drakBlue,
          height: 0.12,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExtractedText()),
            );
          },
        ),
      ],
      ),
    );
  }
}

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:textdetection/core/Config/Route/app_route.dart';

import '../../ExtractedText/Model/extracted_text_arguments.dart';

part 'image_state.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit() : super(ImagePickerInitial());

  File? selectedImage;

  Future<void> pickImages(ImageSource source) async {
    try {
      emit(ImagePickerLoading());

      final pickedFile = await ImagePicker().pickImage(source: source);

      if (pickedFile != null) {
        selectedImage = File(pickedFile.path);

        emit(ImagePickerSuccess(image: selectedImage!));
      } else {
        emit(ImagePickerInitial());
      }
    } catch (e) {
      emit(ImagePickerError(error: e.toString()));
    }
  }

  void resetImage() {
    selectedImage = null;
    emit(ImagePickerInitial());
  }

  Future<void> extractText(context) async {
    final TextRecognizer textRecognizer = TextRecognizer();
    try {
      final inputImage = InputImage.fromFile(selectedImage!);
      final RecognizedText recognizedText =
          await textRecognizer.processImage(inputImage);

      StringBuffer extractedTextBuffer = StringBuffer();

      for (TextBlock block in recognizedText.blocks) {
        for (TextLine line in block.lines) {
          for (TextElement element in line.elements) {
            extractedTextBuffer.write('${element.text} ');
          }
          extractedTextBuffer.writeln();
        }
      }
      final extractedText = extractedTextBuffer.toString();
      Navigator.of(context).pushNamed(
        AppRoutes.extractedTextScreen,
        arguments: ExtractedTextArguments(
          extractedText: extractedText,
          selectedFiles: selectedImage!,
        ),
      );
      // await PdfUtil.createPdf(
      //   text: extractedText,
      //   fileSelected: selectedImage!,
      // );
    } catch (e) {
      emit(TextRecognitionError("Error extracting text or saving PDF: $e"));
    }
  }
}

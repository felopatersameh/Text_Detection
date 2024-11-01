import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';

part 'text_recognition_state.dart';

class TextRecognitionCubit extends Cubit<TextRecognitionState> {
  TextRecognitionCubit() : super(TextRecognitionInitial());

  final textRecognizer = TextRecognizer();
  final imagePicker = ImagePicker();

  Future<void> recognizeText(ImageSource source) async {
    try {
      emit(TextRecognitionLoading());

      final pickedImage = await imagePicker.pickImage(source: source);
      if (pickedImage == null) {
        emit(const TextRecognitionError('No image selected'));
        return;
      }

      final inputImage = InputImage.fromFile(File(pickedImage.path));
      final recognizedText = await textRecognizer.processImage(inputImage);

      emit(TextRecognitionSuccess(recognizedText.text));
    } catch (e) {
      emit(TextRecognitionError(e.toString()));
    }
  }

  @override
  Future<void> close() {
    textRecognizer.close();
    return super.close();
  }
}

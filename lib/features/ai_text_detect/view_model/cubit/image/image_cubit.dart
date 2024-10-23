import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'image_state.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit() : super(ImagePickerInitial());

  File? selectedImage;

  Future<void> pickImage(ImageSource source) async {
    try {
      emit(ImagePickerLoading());

      final pickedFile = await ImagePicker().pickImage(source: source);

      if (pickedFile != null) {
        selectedImage = File(pickedFile.path);
        emit(ImagePickerSuccess(image: selectedImage!));
      } else {
        emit(const ImagePickerError(error: 'No image selected'));
      }
    } catch (e) {
      emit(ImagePickerError(error: e.toString()));
    }
  }

  void resetImage() {
    selectedImage = null;
    emit(ImagePickerInitial());
  }
}

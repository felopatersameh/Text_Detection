import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'file_state.dart';

class FileCubit extends Cubit<FileState> {
  FileCubit() : super(FileInitial());

  List<String> files = [];

  void addFile(String fileName) {
    files.add(fileName);
    debugPrint("Current files: $files");
    emit(FileSuccess(files));
  }

  void removeFile(int index) {
    if (index >= 0 && index < files.length) {
      files.removeAt(index);
      emit(FileSuccess(files));
    } else {
      debugPrint("Invalid index: $index. Cannot remove file.");
    }
  }

}


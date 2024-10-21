import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'file_state.dart';

class FileCubit extends Cubit<FileState> {
  FileCubit() : super(FileInitial());

  List<String> files = [];

  void addFile(String fileName) {
    files.add(fileName);
    emit(FileSuccess(files, message: 'File added successfully.'));
  }

  void removeFile(int index) {
    if (index < 0 || index >= files.length) return;
    files.removeAt(index);
    emit(FileSuccess(files, message: 'File removed successfully.'));
  }
}


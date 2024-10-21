import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
part 'upload_state.dart';

class UploadCubit extends Cubit<UploadState> {
  UploadCubit() : super(UploadInitial());

  void startUpload() {
    emit(UploadInProgress(0)); // Start at 0%
    Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      if (state is UploadInProgress) {
        final currentState = state as UploadInProgress;
        if (currentState.percent >= 100) {
          timer.cancel();
          emit(UploadComplete());
        } else {
          emit(UploadInProgress(currentState.percent + 10));
        }
      }
    });
  }

  void cancelUpload() {
    emit(UploadCancelled());
  }
}


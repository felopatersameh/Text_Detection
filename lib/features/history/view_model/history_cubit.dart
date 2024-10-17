import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'history_state.dart';

List _files = [];

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(HistoryInitial());

  void addFile(dynamic file) {
    /// TODO
    _files.add(file);
    emit(AddedFile());
  }

  void removedFile(file) {
    /// TODO
    _files.remove(file);
    emit(RemovedFile());
  }

  void clearHistory() {
    /// TODO
    _files.clear();
    emit(ClearHistory());
  }
}

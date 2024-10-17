part of 'history_cubit.dart';

@immutable
sealed class HistoryState {}

final class HistoryInitial extends HistoryState {}

final class AddedFile extends HistoryState {}

final class RemovedFile extends HistoryState {}

final class ClearHistory extends HistoryState {}

import 'package:bloc/bloc.dart';class PasswordVisibilityCubit extends Cubit<Map<String, bool>> {  PasswordVisibilityCubit() : super({});  void togglePasswordVisibility(String fieldId) {    final currentState = state[fieldId] ?? false;    emit({...state, fieldId: !currentState});  }}
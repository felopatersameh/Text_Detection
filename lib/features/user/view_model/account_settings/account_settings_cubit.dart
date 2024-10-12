import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'account_settings_state.dart';

class AccountSettingsCubit extends Cubit<AccountSettingsState> {
  AccountSettingsCubit() : super(AccountSettingsInitial());

}

import 'package:bloc/bloc.dart';import 'package:meta/meta.dart';import '../../model/log_in_model.dart';import '../../model/register_model.dart';part 'authentication_state.dart';class AuthenticationCubit extends Cubit<AuthenticationState> {  AuthenticationCubit() : super(AuthenticationInitial());  void login(LogInModel logInModel) {}  void loginByGoogle() {}  void loginByFacebook() {}  void loginByApple() {}  void createAccount(RegisterModel registerModel) {}}
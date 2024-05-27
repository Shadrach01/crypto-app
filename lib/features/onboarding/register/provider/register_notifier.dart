import 'package:crypto_app/features/onboarding/register/provider/register_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier() : super(RegisterState());

  void onUserEmailChange(String email) {
    state = state.copyWith(email: email);
  }

  void onUserNameChange(String name) {
    state = state.copyWith(userName: name);
  }

  void onUserPasswordChange(String password) {
    state = state.copyWith(password: password);
  }

  void onUserRePasswordChange(String password) {
    state = state.copyWith(rePassword: password);
  }
}

final registerNotifierProvider =
    StateNotifierProvider<RegisterNotifier, RegisterState>(
        (ref) => RegisterNotifier());

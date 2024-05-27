import 'package:crypto_app/common/global_loader/global_loader.dart';
import 'package:crypto_app/common/models/user.dart';
import 'package:crypto_app/common/utils/constants.dart';
import 'package:crypto_app/common/widgets/toast_info.dart';
import 'package:crypto_app/features/onboarding/sign_in/provider/sign_in_notiier.dart';
import 'package:crypto_app/features/onboarding/sign_in/repo/sign_in_repo.dart';
import 'package:crypto_app/global.dart';
import 'package:crypto_app/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInController {
  SignInController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> handleSignIn(WidgetRef ref) async {
    var state = ref.read(signInNotifierProvider);

    String email = state.email;
    String password = state.password;

    emailController.text = email;
    passwordController.text = password;

    if (state.email.isEmpty || email.isEmpty) {
      toastInfo("Your email is empty");
      return;
    }

    if (state.password.isEmpty || password.isEmpty) {
      toastInfo("Input your password");
      return;
    }

    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    try {
      final credential = await SignInRepo.firebaseSignIn(email, password);

      // return this if there's no registered user with the provided info
      if (credential.user == null) {
        toastInfo("User not found");
        return;
      }

// check if the user has verified their email address
      if (!credential.user!.emailVerified) {
        toastInfo("You must verify your account");
        return;
      }

      var user = credential.user;
      if (user != null) {
        String? displayName = user.displayName;
        String? email = user.email;
        String? id = user.uid;

        LoginRequestEntity loginRequestEntity = LoginRequestEntity();
        loginRequestEntity.name = displayName;
        loginRequestEntity.email = email;
        loginRequestEntity.openId = id;
        loginRequestEntity.type = 1;

        asyncPostAllData(loginRequestEntity);
        if (kDebugMode) {
          print("user is logged in successfully");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
  }
}

void asyncPostAllData(LoginRequestEntity loginRequestEntity) {
  try {
    Global.storageService
        .setString(ConstantTexts.STORAGE_USER_TOKEN_KEY, "123456");

    navKey.currentState
        ?.pushNamedAndRemoveUntil("/application", (route) => false);
  } catch (e) {
    if (kDebugMode) {
      print(e.toString());
    }
  }
}

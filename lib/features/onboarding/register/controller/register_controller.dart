import 'package:crypto_app/common/global_loader/global_loader.dart';
import 'package:crypto_app/common/widgets/toast_info.dart';
import 'package:crypto_app/features/onboarding/register/provider/register_notifier.dart';
import 'package:crypto_app/features/onboarding/register/repo/register_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterController {
  final WidgetRef ref;

  RegisterController({required this.ref});

  Future<void> handleRegister() async {
    // Get the instance of the register page
    var state = ref.read(registerNotifierProvider);

    String email = state.email;
    String userName = state.userName;

    String password = state.password;
    String rePassword = state.rePassword;

    // Check if a email is given in the TextField
    if (state.email.isEmpty || email.isEmpty) {
      toastInfo("Please input your email");

      return;
    }

    // Check if a username is given in the TextField
    if (state.userName.isEmpty || userName.isEmpty) {
      toastInfo("Please input your username");

      return;
    }

    // Check if a username is given in the TextField
    if ((state.password.isEmpty || state.rePassword.isEmpty) ||
        password.isEmpty ||
        rePassword.isEmpty) {
      toastInfo("Please input your passsword");

      return;
    }

    // Check if a username is given in the TextField
    if ((state.password != state.rePassword) || password != rePassword) {
      toastInfo("Your password does not match");

      return;
    }

// If everything goes well, procees to showing the Loading Icon
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    var context = Navigator.of(ref.context);

    try {
      // SignUp using email and password on firebase
      final credential = await RegisterRepo.firebaseSignUp(email, password);

      // Check if user has been successfully registered into firebase
      if (credential.user != null) {
        // if the operation is successful, send a verification email to user
        await credential.user?.sendEmailVerification();

        // Update the user's UserName to the new one given
        await credential.user?.updateDisplayName(userName);

        toastInfo(
            "An email as been sent too verify your account. PLease click on the mail and confirm your email");
        context.pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo("The password is too short");
      } else if (e.code == 'email-already-in-use') {
        toastInfo("This email has already been registered");
      } else if (e.code == 'user-not-found') {
        toastInfo("User not found");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    // show the register page
    ref.watch(appLoaderProvider.notifier).setLoaderValue(false);
  }
}

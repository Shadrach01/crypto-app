import 'package:crypto_app/common/global_loader/global_loader.dart';
import 'package:crypto_app/common/widgets/app_bar.dart';
import 'package:crypto_app/common/widgets/app_text_fields.dart';
import 'package:crypto_app/features/onboarding/sign_in/controller/sign_in_controller.dart';
import 'package:crypto_app/features/onboarding/sign_in/provider/sign_in_notiier.dart';
import 'package:crypto_app/features/onboarding/sign_in/view/widgets/sign_in_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// This is the Login page
/// This page gets most of it's widget from the sign_in_widget and the app_text_field

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  ConsumerState<SignIn> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  late SignInController _controller;

  @override
  void didChangeDependencies() {
    _controller = SignInController();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final loader = ref.watch(appLoaderProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(text: "Sign In"),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: loader == false
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 70.h),
                    appTextField(
                      // controller: _controller.emailController,
                      hintText: "Email",
                      func: (value) => ref
                          .read(signInNotifierProvider.notifier)
                          .onUserEmailChange(value),
                      child: const Icon(CupertinoIcons.person_alt_circle_fill),
                    ),
                    SizedBox(height: 24.h),
                    appTextField(
                      // controller: _controller.passwordController,
                      hintText: "Password",
                      func: (value) => ref
                          .read(signInNotifierProvider.notifier)
                          .onUserPasswordChange(value),
                      child: const Icon(CupertinoIcons.person_alt_circle_fill),
                    ),
                    SizedBox(height: 30.h),
                    logInButton(onTap: () => _controller.handleSignIn(ref)),
                    SizedBox(height: 7.h),
                    registerAndForgotPassowrd(context),
                    SizedBox(height: 24.h),
                    thirdPartyLogin(),
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.blue,
                  color: Colors.blue[800]!,
                ),
              ),
      ),
    );
  }
}

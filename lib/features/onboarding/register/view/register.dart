import 'package:crypto_app/common/global_loader/global_loader.dart';
import 'package:crypto_app/common/widgets/app_bar.dart';
import 'package:crypto_app/common/widgets/app_text_fields.dart';
import 'package:crypto_app/features/onboarding/register/controller/register_controller.dart';
import 'package:crypto_app/features/onboarding/register/provider/register_notifier.dart';
import 'package:crypto_app/features/onboarding/register/view/widgets/register_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register extends ConsumerStatefulWidget {
  const Register({super.key});

  @override
  ConsumerState<Register> createState() => _RegisterState();
}

class _RegisterState extends ConsumerState<Register> {
  late RegisterController _controller;

  @override
  void initState() {
    _controller = RegisterController(ref: ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final loader = ref.watch(appLoaderProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(text: "R E G I S T E R"),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: loader == false
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.h),
                    appTextField(
                      hintText: "Email",
                      func: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onUserEmailChange(value),
                      child: const Icon(CupertinoIcons.person_alt_circle_fill),
                    ),
                    SizedBox(height: 24.h),
                    appTextField(
                      hintText: "User name",
                      func: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onUserNameChange(value),
                      child: const Icon(CupertinoIcons.person_alt_circle_fill),
                    ),
                    SizedBox(height: 24.h),
                    appTextField(
                      hintText: "Password",
                      func: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onUserPasswordChange(value),
                      child: const Icon(CupertinoIcons.person_alt_circle_fill),
                    ),
                    SizedBox(height: 24.h),
                    appTextField(
                      hintText: "Confirm Password",
                      func: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onUserRePasswordChange(value),
                      child: const Icon(CupertinoIcons.person_alt_circle_fill),
                    ),
                    SizedBox(height: 20.h),
                    registerButton(
                      onTap: () => _controller.handleRegister(),
                    ),
                    SizedBox(height: 30.h),
                    goToLogin(context),
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

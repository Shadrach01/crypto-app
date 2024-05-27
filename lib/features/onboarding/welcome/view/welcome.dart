import 'package:crypto_app/features/onboarding/welcome/view/widgets/welcome_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const CryptoImages(),
          SizedBox(height: 30.h),
          const OnboardingTexts(),
          SizedBox(height: 32.h),
          slidableWidget(context),
        ],
      ),
    ));
  }
}

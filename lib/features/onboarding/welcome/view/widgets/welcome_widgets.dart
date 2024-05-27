import 'package:crypto_app/common/utils/constants.dart';

import 'package:crypto_app/common/widgets/text_widgets.dart';
import 'package:crypto_app/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../../../../common/utils/image_res.dart';

/// This consists of all the widgets used in the welcome screen

// The first image shown above

class CryptoImages extends StatelessWidget {
  const CryptoImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      width: 500.w,
      child: Image.asset(
        ImageRes.crypto,
        fit: BoxFit.cover,
        alignment: const Alignment(-0.53, 0),
      ),
    );
  }
}

//the welcome texts
class OnboardingTexts extends StatelessWidget {
  const OnboardingTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text32Normal(
                text: ConstantTexts.HOME_SCREEN_YOUR,
              ),
              SizedBox(width: 10.w),
              const Text32Normal(
                text: ConstantTexts.CRYPTOCURRENCY,
                color: Colors.blue,
              ),
            ],
          ),
          const Text32Normal(
            text: ConstantTexts.COMPANION_APP,
          ),
          SizedBox(height: 12.h),
          const Text16Normal(
            text: ConstantTexts.NAVIGATE_WORLD_OF_CRYPTO,
          ),
        ],
      ),
    );
  }
}

// Slidable widget
Widget slidableWidget(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 24.w),
    child: SlideAction(
      sliderRotate: false,
      outerColor: Colors.transparent,
      innerColor: Colors.blue,
      elevation: 0,
      sliderButtonIcon: const Icon(
        CupertinoIcons.arrow_right,
        color: Colors.white,
      ),
      onSubmit: () {
        /// Since its the first time launching the app
        /// set the storageService to true so that the String gets saved
        /// And the app know it's the first time
        Global.storageService
            .setBool(ConstantTexts.STORAGE_DEVICE_OPEN_FIRST_KEY, true);
        return Navigator.pushNamed(
          context,
          "/sign_in",
        );
      },
    ),
  );
}

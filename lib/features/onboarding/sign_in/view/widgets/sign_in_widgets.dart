import 'package:crypto_app/common/widgets/app_decoration.dart';
import 'package:crypto_app/common/widgets/text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// log in button
Widget logInButton({required void Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: appContainer(
      width: 120,
      height: 60,
      containerColor: Colors.blue[700]!,
      child: const Center(
        child: Text20Normal(
          text: "LOGIN",
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

// Forget password and register buttons
Widget registerAndForgotPassowrd(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "/register");
        },
        child: const Text12Normal(
          text: "Register now",
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
      TextButton(
        onPressed: () {},
        child: const Text12Normal(
          text: "Forgot password?",
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}

Widget thirdPartyLogin() {
  return SizedBox(
    width: double.maxFinite,
    child: Column(
      children: [
        _thirdParty(
          text: "LOGIN WITH FACEBOOK",
          containerColor: Colors.blue[700]!,
          iconContianerColor: Colors.blue[900]!,
        ),
        SizedBox(height: 15.h),
        _thirdParty(
          text: "LOGIN WITH TWITTER",
          containerColor: Colors.blue[400]!,
          iconContianerColor: Colors.blue[700]!,
        ),
        SizedBox(height: 15.h),
        _thirdParty(
          text: "LOGIN WITH GOOGLE",
          containerColor: Colors.red,
          iconContianerColor: Colors.red[900]!,
        ),
      ],
    ),
  );
}

// third party login
Widget _thirdParty(
    {Widget icon = const Icon(CupertinoIcons.news),
    String text = "Text here",
    Color containerColor = Colors.blue,
    Color iconContianerColor = Colors.red,
    void Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: appContainer(
      width: 400,
      height: 50,
      radius: 15,
      containerColor: containerColor,
      child: Row(
        children: [
          appContainer(
            width: 55,
            height: 55,
            containerColor: iconContianerColor,
            child: icon,
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.w),
            child: Text16Normal(
              text: text,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

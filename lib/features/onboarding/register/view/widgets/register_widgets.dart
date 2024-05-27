// register button

import 'package:crypto_app/common/utils/constants.dart';
import 'package:crypto_app/common/widgets/app_decoration.dart';
import 'package:crypto_app/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

Widget registerButton({required void Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: appContainer(
      width: 400,
      height: 60,
      containerColor: Colors.blue[700]!,
      child: const Center(
        child: Text20Normal(
          text: "Register",
          color: Colors.white,
        ),
      ),
    ),
  );
}

// Already have and account?
// Then proceed to login
Widget goToLogin(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, "/sign_in");
    },
    child: Column(
      children: [
        const Text12Normal(
          text: ConstantTexts.ALREADY_HAVE_AN_ACCOUNT,
          fontWeight: FontWeight.bold,
        ),
        appContainer(
            width: 400,
            height: 50,
            containerColor: Colors.transparent,
            radius: 15,
            border: Border.all(
              color: Colors.lightBlueAccent.shade100,
            ),
            child: Center(
              child: Text16Normal(
                text: "GO TO LOGIN",
                fontWeight: FontWeight.bold,
                color: Colors.grey[600]!,
              ),
            )),
      ],
    ),
  );
}

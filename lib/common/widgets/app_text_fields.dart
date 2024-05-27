import 'package:crypto_app/common/widgets/app_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appTextField({
  String hintText = "Text here",
  // TextEditingController? controller,
  bool obscureText = false,
  void Function(String value)? func,
  Widget? child,
}) {
  return appContainer(
    height: 60,
    width: 500,
    radius: 9,
    containerColor: Colors.transparent,
    border: Border.all(
      color: Colors.grey[300]!,
      width: 1.5.w,
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: child,
        ),
        SizedBox(width: 5.w),
        VerticalDivider(
          color: Colors.grey[300]!,
          thickness: 1.5,
          endIndent: 1.5,
        ),
        appTextFieldOnly(
          hintText: hintText,
          func: func,
          // controller: controller,
          obscureText: obscureText,
        ),
      ],
    ),
  );
}

Widget appTextFieldOnly({
  // TextEditingController? controller,
  String hintText = "",
  void Function(String value)? func,
  bool obscureText = false,
}) {
  return SizedBox(
    height: 55,
    width: 250,
    child: TextField(
      // controller: controller,
      onChanged: (value) => func!(value),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
      autocorrect: false,
      maxLines: 1,
      obscureText: obscureText,
    ),
  );
}

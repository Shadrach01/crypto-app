import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// BoxDecoration for containers
BoxDecoration appBoxDecoration(
    {Color color = Colors.blue, double radius = 15, BoxBorder? border}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius.w),
    border: border,
  );
}

// container used throughout the app
Widget appContainer({
  double width = 80,
  double height = 40,
  double radius = 8,
  Color containerColor = Colors.lightBlue,
  double borderWidth = 1.5,
  EdgeInsets? padding,
  EdgeInsets? margin,
  Widget? child,
  Border? border,
}) {
  return Container(
    padding: padding,
    margin: margin,
    width: width.w,
    height: height.h,
    decoration: appBoxDecoration(
      radius: radius.w,
      color: containerColor,
      border: border,
    ),
    child: child,
  );
}

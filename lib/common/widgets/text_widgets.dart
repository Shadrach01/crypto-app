import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Text32Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const Text32Normal({
    super.key,
    this.text = "Insert text here",
    this.color = Colors.black,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 32.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Text20Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const Text20Normal({
    super.key,
    this.text = "Insert text here",
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 20.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Text16Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const Text16Normal(
      {super.key,
      this.text = "Insert text here",
      this.color = Colors.black87,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 16.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Text12Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const Text12Normal({
    super.key,
    this.text = "Insert text here",
    this.color = Colors.black87,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 12.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}

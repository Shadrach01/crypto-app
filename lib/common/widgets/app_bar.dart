import 'package:flutter/material.dart';
import 'text_widgets.dart';

// Custom appbar for the

AppBar appBar({
  String text = "",
  bool centerTitle = true,
  Color color = Colors.white,
}) {
  return AppBar(
    title: Text20Normal(
      text: text,
      fontWeight: FontWeight.w500,
    ),
    centerTitle: centerTitle,
    backgroundColor: color,
  );
}

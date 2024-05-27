import 'package:crypto_app/features/application/view/application_widgets/application_widgets.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens(index: index),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.blue,
        color: Colors.grey[200]!,
        animationDuration: const Duration(milliseconds: 300),
        items: bottomTabs,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}

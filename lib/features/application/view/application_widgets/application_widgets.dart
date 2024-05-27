import 'package:crypto_app/common/widgets/app_decoration.dart';
import 'package:crypto_app/features/home/view/home.dart';
import 'package:crypto_app/features/market_screen/market_view.dart';
import 'package:flutter/cupertino.dart';

final List<Widget> bottomTabs = [
  const Icon(CupertinoIcons.home),
  const Icon(CupertinoIcons.chart_pie_fill),
  const Icon(CupertinoIcons.chart_bar_circle),
  const Icon(CupertinoIcons.person),
];

Widget appScreens({int index = 1}) {
  List<Widget> screens = [
    const Home(),
    const MarketView(),
    // const CryptoDetails(),
    appContainer(
      width: 250,
      height: 250,
      child: const Icon(CupertinoIcons.chart_bar_circle),
    ),
    appContainer(
      width: 250,
      height: 250,
      child: const Icon(CupertinoIcons.person),
    ),
  ];

  return screens[index];
}

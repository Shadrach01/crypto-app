import 'package:crypto_app/common/widgets/app_bar.dart';

import 'package:crypto_app/common/widgets/crypto_list_tile.dart';
import 'package:crypto_app/features/market_screen/view/market_page_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarketView extends StatefulWidget {
  const MarketView({super.key});

  @override
  State<MarketView> createState() => _MarketViewState();
}

class _MarketViewState extends State<MarketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(text: "Market Trends"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              // The search bar
              searchBar(),
              SizedBox(height: 30.h),
              const FilterRow(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
              SizedBox(height: 30.h),
              const CryptoListTile(),
            ],
          ),
        ),
      ),
    );
  }
}

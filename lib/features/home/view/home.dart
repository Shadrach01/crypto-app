import 'package:crypto_app/features/home/view/widgets/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/widgets/crypto_list_tile.dart';

/// This is the home screen
/// Each widgets are gotten from the ${home_widget}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24.h),
              // Balance Container
              const BalanceContainer(),
              SizedBox(height: 24.h),
              // RoundedWidgetRow
              const RoundedWidgetRow(),

              SizedBox(height: 24.h),
              //My MyPortfolio
              const MyPortfolio(),

              SizedBox(height: 24.h),

              // Crypto List Tile
              const CryptoListTile(),
              SizedBox(height: 24.h),

              // Crypto List Tile
              const CryptoListTile(),
              SizedBox(height: 24.h),

              // Crypto List Tile
              const CryptoListTile(),
              SizedBox(height: 24.h),

              // Crypto List Tile
              const CryptoListTile(),
              SizedBox(height: 24.h),

              // Crypto List Tile
              const CryptoListTile(),
              SizedBox(height: 24.h),

              // Crypto List Tile
              const CryptoListTile(),
              SizedBox(height: 24.h),

              // Crypto List Tile
              const CryptoListTile(),
            ],
          ),
        ),
      ),
    );
  }
}

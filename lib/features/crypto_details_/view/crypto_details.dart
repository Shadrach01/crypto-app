/// This is the screen where the crypto details are being shown.
/// The candle movement and everything
/// ALl of the widgets ued in this screen are placed in the crypto_details_screen

import 'package:crypto_app/common/widgets/app_bar.dart';
import 'package:crypto_app/features/crypto_details_/view/widgets/crypto_details_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CryptoDetails extends StatelessWidget {
  const CryptoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(text: "BTC"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  currencyName(),
                  SizedBox(height: 15.h),
                  const FilterRow(),
                  SizedBox(height: 15.h),
                  candleSticksContainer(),
                  SizedBox(height: 7.h),
                  const DateRow(),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: actionButtons(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:crypto_app/common/widgets/app_decoration.dart';
import 'package:crypto_app/common/widgets/text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// The first row showing the currency symbol, name,
// price, and gains
Widget currencyName() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          appContainer(
            width: 50,
            height: 50,
            radius: 50,
            containerColor: Colors.lightBlueAccent.withOpacity(.1),
            child: const Icon(CupertinoIcons.add_circled),
          ),
          const SizedBox(width: 5),
          Text16Normal(
            text: "BTC",
            fontWeight: FontWeight.w400,
            color: Colors.black.withOpacity(.6),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text20Normal(
            text: "\$546.321.12",
            fontWeight: FontWeight.w400,
          ),
          Row(
            children: [
              const Text12Normal(
                text: "0.20%",
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                width: 2.w,
              ),
              const Text12Normal(
                text: "+8.1%",
                fontWeight: FontWeight.w400,
              ),
            ],
          )
        ],
      ),
    ],
  );
}

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        appContainer(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          width: 50.w,
          height: 30.h,
          radius: 8,
          containerColor: Colors.lightBlueAccent.withOpacity(.2),
          child: const Center(
            child: Text12Normal(
              text: "24H",
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        appContainer(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          width: 50.w,
          height: 35.h,
          radius: 8,
          containerColor: Colors.transparent,
          border: Border.all(
            color: Colors.grey[300]!,
            width: 1.5.w,
          ),
          child: const Center(
            child: Text12Normal(
              text: "1W",
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        appContainer(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          width: 50.w,
          height: 35.h,
          radius: 8,
          containerColor: Colors.transparent,
          border: Border.all(
            color: Colors.grey[300]!,
            width: 1.5.w,
          ),
          child: const Center(
            child: Text12Normal(
              text: "1M",
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        appContainer(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          width: 50.w,
          height: 35.h,
          radius: 8,
          containerColor: Colors.transparent,
          border: Border.all(
            color: Colors.grey[300]!,
            width: 1.5.w,
          ),
          child: const Center(
            child: Text12Normal(
              text: "1Y",
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        appContainer(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          width: 50.w,
          height: 35.h,
          radius: 8,
          containerColor: Colors.transparent,
          border: Border.all(
            color: Colors.grey[300]!,
            width: 1.5.w,
          ),
          child: const Center(
            child: Text12Normal(
              text: "ALL",
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}

// Container shoing the candle sticks
Widget candleSticksContainer() {
  return appContainer(
      width: 700.w,
      height: 430.h,
      radius: 0,
      child: const Center(
        child: Text32Normal(
          text: "Candle Stick Will be here",
        ),
      ));
}

class DateRow extends StatelessWidget {
  const DateRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text12Normal(text: "Sun"),
        Text12Normal(text: "Mon"),
        Text12Normal(text: "Tue"),
        Text12Normal(text: "Thu"),
        Text12Normal(text: "Fri"),
        Text12Normal(text: "Sat"),
      ],
    );
  }
}

Widget actionButtons({
  void Function()? onSellTap,
  void Function()? onBuyTap,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
        onTap: onSellTap,
        child: appContainer(
          height: 57,
          width: 160,
          containerColor: Colors.lightBlue,
          radius: 14,
          child: const Center(
            child: Text20Normal(
              text: "Sell",
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: onBuyTap,
        child: appContainer(
          height: 57,
          width: 160,
          containerColor: Colors.pink.withOpacity(.2),
          radius: 14,
          child: const Center(
            child: Text20Normal(
              text: "Buy",
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}

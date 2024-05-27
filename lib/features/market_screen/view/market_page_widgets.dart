import 'package:crypto_app/common/utils/constants.dart';
import 'package:crypto_app/common/widgets/app_decoration.dart';
import 'package:crypto_app/common/widgets/text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// This is where the entire widget located in the Market Trends screen is located

// This is the search bar
Widget searchBar() {
  return appContainer(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    width: 350.w,
    height: 45.h,
    containerColor: Colors.lightBlue.withOpacity(.1),
    radius: 10,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(CupertinoIcons.search),
            SizedBox(width: 7.w),
            Text16Normal(
              text: ConstantTexts.SEARCH_CRYPTOCURRENCY,
              color: Colors.black.withOpacity(.2),
            ),
          ],
        ),
        const Icon(CupertinoIcons.slider_horizontal_3)
      ],
    ),
  );
}

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          appContainer(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            width: 80.w,
            height: 40.h,
            radius: 8,
            containerColor: Colors.lightBlueAccent.withOpacity(.2),
            child: const Center(
              child: Text12Normal(
                text: ConstantTexts.ALL_ASSETS,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          appContainer(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            width: 40.w,
            height: 40.h,
            radius: 5,
            containerColor: Colors.transparent,
            border: Border.all(
              color: Colors.grey[300]!,
              width: 1.5.w,
            ),
            child: const Center(
              child: Text12Normal(
                text: "24h",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          appContainer(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            width: 80.w,
            height: 40.h,
            radius: 8,
            containerColor: Colors.transparent,
            border: Border.all(
              color: Colors.grey[300]!,
              width: 1.5.w,
            ),
            child: const Center(
              child: Text12Normal(
                text: ConstantTexts.TOP_RATED,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          appContainer(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            width: 80.w,
            height: 40.h,
            radius: 8,
            containerColor: Colors.transparent,
            border: Border.all(
              color: Colors.grey[300]!,
              width: 1.5.w,
            ),
            child: const Center(
              child: Text12Normal(
                text: ConstantTexts.TOP_TRADED,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

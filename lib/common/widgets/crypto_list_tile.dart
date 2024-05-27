import 'package:crypto_app/common/widgets/app_decoration.dart';
import 'package:crypto_app/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//List tile for each cryptocurrecny available
class CryptoListTile extends StatelessWidget {
  const CryptoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            appContainer(
              width: 50.w,
              height: 50.h,
              containerColor: Colors.blueAccent.withOpacity(.1),
              radius: 10,
              child: const Icon(
                Icons.add_location,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 7.w),
            const Column(
              children: [
                Text16Normal(
                  text: "BTC",
                  fontWeight: FontWeight.w500,
                ),
                Text12Normal(
                  text: "Bitcoin",
                ),
              ],
            ),
          ],
        ),
        appContainer(
          width: 100.w,
          height: 50.h,
          containerColor: Colors.blueAccent,
          radius: 10,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text16Normal(text: "\$4,454.09"),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text12Normal(
                text: "123%",
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

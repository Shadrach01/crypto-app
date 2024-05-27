import 'package:crypto_app/common/utils/constants.dart';
import 'package:crypto_app/common/widgets/app_decoration.dart';
import 'package:crypto_app/common/widgets/text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Custom appbar for the home screen
AppBar homeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text20Normal(
                text: "Kate John",
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 5.h),
              const Text12Normal(
                text: ConstantTexts.WELCOME_BACK,
              ),
            ],
          ),
          const Icon(CupertinoIcons.chat_bubble_text),
        ],
      ),
    ),
  );
}

// container for the wallet balance
class BalanceContainer extends StatelessWidget {
  const BalanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return appContainer(
      width: 400.w,
      height: 150.h,
      child: CustomPaint(
        painter: _TwoTrianglePainters(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text16Normal(
                  text: ConstantTexts.WALLET_BALANCE,
                  color: Colors.white,
                ),
                SizedBox(width: 5.w),
                const Icon(
                  CupertinoIcons.eye,
                  color: Colors.white,
                  size: 15,
                )
              ],
            ),
            const Text32Normal(
              text: "341,235.20",
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 7.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text12Normal(
                  text: ConstantTexts.WEEKLY_PROFIT,
                  color: Colors.white,
                ),
                SizedBox(width: 10.w),
                Container(
                  width: 50.w,
                  height: 20.h,
                  decoration:
                      appBoxDecoration(color: Colors.white.withOpacity(.2)),
                  child: const Center(
                    child: Text12Normal(
                      text: "2.35%",
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// The row after the wallet balance container
class RoundedWidgetRow extends StatelessWidget {
  const RoundedWidgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _transactionBox(
          icon: CupertinoIcons.refresh,
          text: "Exchange",
        ),
        _transactionBox(text: "Deposit"),
        _transactionBox(text: "Transfer"),
        _transactionBox(text: "Withdraw"),
      ],
    );
  }
}

Widget _transactionBox({
  Color color = Colors.blueAccent,
  IconData icon = Icons.abc,
  String text = "",
  void Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        appContainer(
          width: 50.w,
          height: 50.h,
          radius: 40,
          containerColor: color.withOpacity(.1),
          child: Center(
            child: Icon(
              icon,
              color: Colors.blue.shade900,
            ),
          ),
        ),
        Text12Normal(
          text: text,
          fontWeight: FontWeight.w600,
        ),
      ],
    ),
  );
}

// My Portfolio row
// This row stands as the header for the currencies that are available
class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text16Normal(
          text: "My Portfolio",
          fontWeight: FontWeight.w500,
        ),
        Text12Normal(
          text: "see all",
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}

//Triangle inside a container
class _TwoTrianglePainters extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..color = Colors.black12.withOpacity(.1)
      ..style = PaintingStyle.fill;

    final paint2 = Paint()
      ..color = Colors.white.withOpacity(.1)
      ..style = PaintingStyle.fill;

    double triangeWidth = size.width * 0.5;
    double triangleHeight = size.height * 0.4;

    double triange2Width = size.width * 0.3;
    double triangle2Height = size.height * 0.4;

    //Define the path for the first triange (bottom left)
    final path1 = Path()
      ..moveTo(size.width, 0) //Bottom left corner
      ..lineTo(size.width, size.height - triangleHeight)
      ..lineTo(triangeWidth, size.height - triangleHeight)
      ..close();

    //Define the path for the second triange (bottom left)
    final path2 = Path()
      ..moveTo(0, size.height) //Bottom left corner
      ..lineTo(0, size.height - triangle2Height)
      ..lineTo(triange2Width, size.height - triangle2Height)
      ..close();

    // Draw the triangle
    canvas.drawPath(path1, paint1);
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

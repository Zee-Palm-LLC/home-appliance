import 'package:aqibproject1/app/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/assets_path.dart';
import '../data/typography.dart';
import '../widgets/customswitch.dart';

class TemHumContainer extends StatelessWidget {
  final String imagesvc;
  final String title;
  final int value;
  final String symbol;

  const TemHumContainer({
    Key? key,
    required this.imagesvc,
    required this.title,
    required this.value,
    required this.symbol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: boxshadow,
        color: kWhitePrimary,
        border: Border.all(color: Kbordergreen),
        borderRadius: BorderRadius.circular(kContainerRadius),
      ),
      height: 133.h,
      width: 138.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 18.h,
          horizontal: 22.w,
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              imagesvc,
              height: 25.h,
              width: 25.w,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              title,
              style: kSmallTextFeild,
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  value.toString(),
                  style: kVeryLargerTextStyle,
                ),
                SizedBox(
                  width: 2.36.w,
                ),
                Text(
                  symbol,
                  style: kSmallTextStyke.copyWith(color: kBlack),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

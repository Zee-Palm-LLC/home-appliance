import 'package:aqibproject1/app/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/assets_path.dart';
import '../data/typography.dart';
import '../widgets/customswitch.dart';

class ConnApp extends StatelessWidget {
  final String svcimage;
  final String title;
  const ConnApp({
    Key? key,
    required this.svcimage,
    required this.title,
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
          vertical: 18.w,
          horizontal: 22.h,
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              svcimage,
              height: 25.h,
              width: 25.w,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              title,
              style: kContainerheading,
            ),
            SizedBox(
              height: 8.h,
            ),
            customswitch(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     customswitch(),
            //     SizedBox(
            //       width: 13.w,
            //     ),
            //     Text(
            //       "ON",
            //       style: kSmallTextStyke.copyWith(color: kBlack),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

import 'package:aqibproject1/app/data/constants.dart';
import 'package:aqibproject1/app/widgets/SetResetButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/assets_path.dart';
import '../data/typography.dart';

import '../widgets/dropdown2.dart';

class SchContainer extends StatelessWidget {
  final String title;
  const SchContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 31.h,
      ),
      child: Container(
        height: 168.h,
        width: 352.w,
        decoration: BoxDecoration(
          boxShadow: boxshadow,
          color: kWhitePrimary,
          border: Border.all(color: Kbordergreen),
          borderRadius: BorderRadius.circular(kContainerRadius),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 16.h,
                bottom: 12.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    kvectorSvg,
                    height: 25.h,
                    width: 25.w,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    title,
                    style: kBighead.copyWith(color: kBlack),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Interval Text",
                        style: kSmallStyleDevice.copyWith(color: kBlack),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                        ),
                        child: Row(
                          children: [
                            const Dropdown(),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text("Hour", style: kUnSmallTextFeild),
                            SizedBox(
                              width: 7.w,
                            ),
                            const Dropdown(),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text("Min", style: kUnSmallTextFeild),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Running Time",
                        style: kSmallStyleDevice.copyWith(color: kBlack),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                        ),
                        child: Row(
                          children: [
                            Dropdown(),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text("Hour", style: kUnSmallTextFeild),
                            SizedBox(
                              width: 7.w,
                            ),
                            const Dropdown(),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text("Min", style: kUnSmallTextFeild),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 18.h,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 82.w,
                  ),
                  const SetResetButton(
                    backcolor: kRedbuttonText,
                    title: 'Reset',
                  ),
                  SizedBox(
                    width: 62.w,
                  ),
                  const SetResetButton(
                    title: 'Save',
                    backcolor: kGreenPrimaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:aqibproject1/app/data/constants.dart';
import 'package:aqibproject1/app/data/typography.dart';
import 'package:aqibproject1/app/widgets/actDecButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/assets_path.dart';

class Rowwidget extends StatelessWidget {
  final String svgimage;
  final String title;
  final String inttime;
  final String duration;

  const Rowwidget({
    Key? key,
    required this.svgimage,
    required this.title,
    required this.inttime,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 21.h,
        ),
        Expanded(
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 20.h,
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    svgimage,
                    height: 25.h,
                    width: 25.w,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    title,
                    style: kContainerheading.copyWith(
                      color: kBlack,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 50.w),
        Expanded(
          child: Text(
            inttime,
            style: kSmallTextFeild,
          ),
        ),
        SizedBox(width: 70.w),
        Expanded(
          child: Text(
            duration,
            style: kSmallTextFeild,
          ),
        ),
      ],
    );
  }
}

import 'package:aqibproject1/app/data/assets_path.dart';
import 'package:aqibproject1/app/data/constants.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/typography.dart';

class Textfeildwidget extends StatelessWidget {
  final String heading;
  final String labeltext;

  const Textfeildwidget({
    Key? key,
    required this.heading,
    required this.labeltext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      width: 354.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: kSmallTextStyleDevice,
          ),
          SizedBox(
            height: 6.h,
          ),
          Container(
              width: 354.w,
              height: 53.h,
              decoration: BoxDecoration(
                  color: kgreytextfeild,
                  borderRadius: BorderRadius.circular(kButtonRadius)),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: labeltext,
                    contentPadding: const EdgeInsets.fromLTRB(18, 16, 16, 235),
                    labelStyle: kSmallTextFeild.copyWith(color: kBlack)),
              )),
        ],
      ),
    );
  }
}

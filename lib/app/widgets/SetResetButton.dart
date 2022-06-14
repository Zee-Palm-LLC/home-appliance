import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/constants.dart';
import '../data/typography.dart';

class SetResetButton extends StatelessWidget {
  final String title;
  final Color backcolor;
  const SetResetButton({
    Key? key,
    required this.title,
    required this.backcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.h,
      width: 70.w,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(title,
            style: kbutStyleDevice.copyWith(
              color: kWhiteButton,
            )),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backcolor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kButtonRadius),
            ),
          ),
        ),
      ),
    );
  }
}

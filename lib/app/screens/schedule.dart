import 'package:aqibproject1/app/data/constants.dart';
import 'package:aqibproject1/app/widgets/SetResetButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/assets_path.dart';
import '../data/typography.dart';

import '../widgets/Schedulecontainer.dart';
import '../widgets/dropdown2.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBackground,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 30.h,
                left: 40.w,
                bottom: 13.h,
              ),
              child: Text(
                "SCHEDULE APPLIANCES",
                style: kFullLargerTextStyle.copyWith(
                    color: kBlack, fontWeight: FontWeight.bold),
              ),
            ),
            const SchContainer(
              title: 'Heater',
            ),
            SizedBox(
              height: 20.h,
            ),
            const SchContainer(
              title: 'Humidifier',
            ),
            SizedBox(
              height: 20.h,
            ),
            const SchContainer(
              title: 'Fan',
            ),
            SizedBox(
              height: 20.h,
            ),
            const SchContainer(
              title: 'Water Pump',
            ),
            SizedBox(
              height: 20.h,
            ),
            const SchContainer(
              title: 'Lights',
            ),
            SizedBox(
              height: 20.h,
            ),
            const SchContainer(
              title: 'Intake',
            ),
            SizedBox(
              height: 20.h,
            ),
            const SchContainer(
              title: 'Exhaust',
            ),
            SizedBox(
              height: 20.h,
            ),
            const SchContainer(
              title: 'Motor',
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      )),
    );
  }
}

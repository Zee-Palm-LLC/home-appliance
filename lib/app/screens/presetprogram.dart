import 'package:aqibproject1/app/data/constants.dart';
import 'package:aqibproject1/app/data/typography.dart';
import 'package:aqibproject1/app/widgets/actDecButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/assets_path.dart';
import '../widgets/profileRowWidget.dart';

class Programpreset extends StatelessWidget {
  const Programpreset({Key? key}) : super(key: key);

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
                  left: 15.w,
                  bottom: 10.h,
                ),
                child: Text(
                  "PRESET PROGRAM",
                  style: kFullLargerTextStyle.copyWith(
                      color: kBlack, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Container(
                  height: 830.h,
                  width: 371.w,
                  decoration: BoxDecoration(
                    color: kWhitePrimary,
                    border: Border.all(color: Kbordergreen),
                    borderRadius: BorderRadius.circular(kContainerRadius),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 11.h,
                          bottom: 26.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Interal Time",
                                style: kiTextStyleDevice.copyWith(
                                    color: kBlack,
                                    fontWeight: FontWeight.w800)),
                            SizedBox(
                              width: 65.w,
                            ),
                            Text("Duration",
                                style: kiTextStyleDevice.copyWith(
                                    color: kBlack,
                                    fontWeight: FontWeight.w800)),
                            SizedBox(
                              width: 20.w,
                            ),
                          ],
                        ),
                      ),
                      const Rowwidget(
                        svgimage: 'kheaterSvg',
                        title: 'Heater',
                        inttime: ' 25 Mins',
                        duration: '02 Mins',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: const Divider(),
                      ),
                      const Rowwidget(
                        svgimage: 'kheaterSvg',
                        title: 'Humidifier',
                        inttime: '25 Min',
                        duration: '02 Min',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: const Divider(),
                      ),
                      const Rowwidget(
                        svgimage: 'kheaterSvg',
                        title: 'Fan',
                        inttime: '1 Hour',
                        duration: '02 Min',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: const Divider(),
                      ),
                      const Rowwidget(
                        svgimage: 'kheaterSvg',
                        title: 'Water\nPump',
                        inttime: '3 Hours',
                        duration: '01 Min',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: const Divider(),
                      ),
                      const Rowwidget(
                        svgimage: kheaterSvg,
                        title: 'Lights',
                        inttime: '10 Hours',
                        duration: '16 Hours',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: const Divider(),
                      ),
                      const Rowwidget(
                        svgimage: kheaterSvg,
                        title: 'Intake',
                        inttime: '20 Mins',
                        duration: '5 Mins',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: const Divider(),
                      ),
                      const Rowwidget(
                        svgimage: kheaterSvg,
                        title: 'Exhaust',
                        inttime: '20 Mins',
                        duration: '05 Mins',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: const Divider(),
                      ),
                      const Rowwidget(
                        svgimage: kheaterSvg,
                        title: 'Motor',
                        inttime: '10 Hours',
                        duration: '16 Hours',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ActiveInactiveButton(
                      title: 'Activate',
                      backcolor: kGreenButtonColor,
                    ),
                    ActiveInactiveButton(
                      title: 'Deactivate',
                      backcolor: kRedbuttonText,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

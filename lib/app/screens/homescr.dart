import 'package:aqibproject1/app/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/assets_path.dart';
import '../data/typography.dart';
import '../widgets/connectionAppliencesContainer.dart';
import '../widgets/customswitch.dart';
import '../widgets/temperatureHumiditContainer.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBackground,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 31.w,
                top: 40.h,
              ),
              child: Row(
                children: [
                  // Image.asset(
                  //   "assets/image.png",
                  //   // height: 58.h,
                  //   // width: 58.w,
                  // ),
                  SvgPicture.asset(
                    "assets/newimage.svg",
                    height: 58.h,
                    width: 58.w,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    "Aqib Javed",
                    style: kSmallTextStyleDevice,
                  )
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 5.h,
                  bottom: 21.h,
                ),
                child: CircleAvatar(
                  backgroundColor: kWhitePrimary,
                  radius: 30.r,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.h,
                      horizontal: 13.w,
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          kcameraSvg,
                          height: 17.84.h,
                          width: 30.78.w,
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(
                          height: 3.16.h,
                        ),
                        Text(
                          "GreenCam",
                          style:
                              kExtraVerySmallTextStyke.copyWith(color: kBlack),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                TemHumContainer(
                  imagesvc: 'kvectorSvg',
                  symbol: 'oC',
                  title: 'Temperature',
                  value: 29,
                ),
                TemHumContainer(
                  imagesvc: 'kvector2Svg',
                  symbol: '%',
                  title: 'Humidity',
                  value: 70,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 37.h,
                left: 31.w,
                bottom: 27.h,
              ),
              child: Text(
                "Connected Appliances",
                style: kVeryLargerTextStyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ConnApp(
                  svcimage: 'kheaterSvg',
                  title: 'Heater',
                ),
                ConnApp(
                  title: 'Humidifier',
                  svcimage: 'khumidifoerSvg',
                )
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ConnApp(
                  svcimage: 'kfanSvg',
                  title: 'Fan',
                ),
                ConnApp(
                  title: 'Water Pump',
                  svcimage: 'kwaterpumpSvg',
                )
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ConnApp(
                  svcimage: 'klightSvg',
                  title: 'Lights',
                ),
                ConnApp(
                  title: 'Intake',
                  svcimage: 'kintakeSvg',
                )
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ConnApp(
                  svcimage: 'kexhaustSvg',
                  title: 'Exhaust',
                ),
                ConnApp(
                  title: 'Motor',
                  svcimage: 'kmotorSvg',
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        )),
      ),
    );
  }
}

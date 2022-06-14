import 'package:aqibproject1/app/data/assets_path.dart';
import 'package:aqibproject1/app/data/constants.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/typography.dart';
import '../widgets/textFeildWidgets.dart';
import 'NavigationBar.dart';

class DeviceSetupSceen extends StatelessWidget {
  const DeviceSetupSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitePrimary,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                top: 0.h,
                left: 80.w,
                child: SvgPicture.asset(kuniondownSvg,
                    width: 317.47.w, height: 171.62.h, fit: BoxFit.scaleDown)),
            // Align(
            //     alignment: Alignment.topCenter,
            //     child: SvgPicture.asset(kuniondownSvg,
            //         width: 317.24.w, height: 230.39.h)),
            Column(
              children: [
                SizedBox(
                  height: 181.h,
                ),
                Text(
                  'Device Setup',
                  style: kheadTextStyle,
                ),
                Text(
                  'Connect to the Devices',
                  style: kSmallerTextStyle,
                ),
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Textfeildwidget(
                        heading: 'Device Name',
                        labeltext: 'e.g Device_01',
                      ),
                      SizedBox(
                        height: 27.h,
                      ),
                      const Textfeildwidget(
                        heading: 'Device ID',
                        labeltext: 'e.g 42401823',
                      ),
                      SizedBox(
                        height: 27.h,
                      ),
                      const Textfeildwidget(
                        heading: 'Password',
                        labeltext: '',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 62.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: boxshadow,
                  ),
                  height: 51.h,
                  width: 134.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NavigationBarScreen()));
                    },
                    child: Text("Connect",
                        style: kTextStyleDevice.copyWith(
                          color: kWhiteButton,
                        )),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(kGreenButtonColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(kButtonRadius),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 105.h,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password?",
                      style: kSmallStyleDevice.copyWith(color: kBlack),
                    ))
              ],
            ),
          ],
        ),
      )),
    );
  }
}

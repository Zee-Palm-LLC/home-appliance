import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/assets_path.dart';
import '../data/constants.dart';
import '../data/typography.dart';
import 'device_setup_Screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitePrimary,
      body: SafeArea(
        child: Stack(children: [
          Positioned(
              top: 0.h,
              left: 47.w,
              child: SvgPicture.asset(kuniondownSvg,
                  width: 356.47.w, height: 230.62.h, fit: BoxFit.scaleDown)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Logo.png",
                  height: 148.h,
                  width: 206.w,
                ),
                Text(
                  "Welcome!",
                  style: kLargerTextStyle,
                ),
                SizedBox(
                  height: 9.h,
                ),
                Text(
                  'Sign In To Your Account',
                  style: kLargeTextStyle,
                ),
                SizedBox(
                  height: 36.h,
                ),
                SizedBox(
                  height: 63.h,
                  width: 356.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeviceSetupSceen(),
                          ));
                    },
                    child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              kGoogleSvg,
                              height: 28.25.h,
                              width: 28.25.w,
                              fit: BoxFit.scaleDown,
                            ),
                            SizedBox(
                              width: 13.w,
                            ),
                            Text(
                              "Sign in With Google",
                              style: kMediumTextStyle,
                            ),
                          ]),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kWhitePrimary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: kGreenPrimaryColor)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              "assets/Union (1).svg",
              height: 235.h,
              width: 356.47.w,
              fit: BoxFit.scaleDown,
            ),
          ),
        ]),
      ),
    );
  }
}

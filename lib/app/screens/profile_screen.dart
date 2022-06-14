import 'package:aqibproject1/app/data/constants.dart';
import 'package:aqibproject1/app/data/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitePrimary,
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 60.h,
                bottom: 25.w,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2.0.w, color: kGreenPrimaryColor),
                  ),
                ),
                child: Text(
                  "PROFILE",
                  style: kbigheading.copyWith(color: kGreenPrimaryColor),
                ),
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            SizedBox(
              height: 190.h,
              width: 207.w,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Aqib Jawed",
                    style: kheadTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            SizedBox(
              width: 300.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'aqibjaved000@gmail.com',
                    style: kSmallTextStyleDevice.copyWith(color: kblacktext),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Divider(
                    height: 2.h,
                    color: kDivider,
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  Text("Connected Device Name",
                      style: kSmallTextStyleDevice.copyWith(color: kblacktext)),
                  SizedBox(
                    height: 9.h,
                  ),
                  Divider(
                    height: 2.h,
                    color: kDivider,
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  Text(
                    "Device ID",
                    style: kSmallTextStyleDevice.copyWith(color: kblacktext),
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Divider(
                    height: 2.h,
                    color: kDivider,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 170.h,
            ),
            SizedBox(
                height: 47.h,
                width: 133.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  },
                  child: Text(
                    "Sign Out",
                    style: kTextStyleDevice.copyWith(color: kSignoutText),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(kSignoutbackground),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kSignoutbutRadius),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      )),
    );
  }
}

import 'dart:async';

import 'package:aqibproject1/app/data/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/constants.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitePrimary,
      body: SafeArea(
          child: Column(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(kuniondownSvg,
                  width: 356.47.w, height: 267.62.h, fit: BoxFit.scaleDown)),
          Center(
            child: Image.asset(
              "assets/Logo.png",
              height: 230.h,
              width: 320.w,
            ),
            // child: SvgPicture.asset(
            //   "assets/Logo-svg1.svg",
            //   height: 230.h,
            //   width: 320.w,
            //   fit: BoxFit.scaleDown,
            // ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              "assets/Union (1).svg",
              height: 267.62.h,
              width: 351.79.w,
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      )),
    );
  }
}

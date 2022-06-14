import 'package:aqibproject1/app/data/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';

import '../data/typography.dart';

class customswitch extends StatefulWidget {
  @override
  _customswitchState createState() => _customswitchState();
}

class _customswitchState extends State<customswitch> {
  bool status = false;
  late String indicator;

  @override
  void initState() {
    status != false ? indicator = "On" : indicator = "Off";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlutterSwitch(
          toggleColor: kGreenPrimaryColor,
          inactiveToggleColor: kinactive,
          activeColor: kWhiteBackground,
          inactiveColor: kWhiteBackground,
          width: 35.w,
          height: 15.h,
          toggleSize: 10.0,
          value: status,
          borderRadius: 20.0.r,
          padding: 2.0,
          activeSwitchBorder: Border.all(
            color: kGreenPrimaryColor,
            width: 1.0.w,
          ),
          inactiveSwitchBorder: Border.all(
            color: kinactive,
            width: 1.0.w,
          ),
          onToggle: (val) {
            setState(() {
              status = val;
              status != false ? indicator = "On" : indicator = "Off";
            });
          },
        ),
        SizedBox(
          width: 13.w,
        ),
        Text(
          indicator,
          style: kSmallTextStyke.copyWith(color: kBlack),
        ),
      ],
    );
  }
}

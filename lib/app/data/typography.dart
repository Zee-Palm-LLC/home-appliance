import 'package:aqibproject1/app/data/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle get kFullLargerTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(28));
TextStyle get kVeryLargerTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(25), color: kBlack);
TextStyle get kLargerTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(48), color: kBlack);
TextStyle get kLargeTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(20), color: kgrey);
TextStyle get kMediumTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(22), color: kGreyBackground);
TextStyle get kheadTextStyle => TextStyle(
    fontSize: ScreenUtil().setSp(33),
    color: kBlack,
    fontWeight: kBoldFontWeight);
TextStyle get kSmallerTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(16), color: kGreenBoldColor);
TextStyle get kbigheading =>
    TextStyle(fontSize: ScreenUtil().setSp(28), color: kBlack);
TextStyle get kSmallTextStyleDevice =>
    TextStyle(fontSize: ScreenUtil().setSp(18), color: kBlack);
TextStyle get kiTextStyleDevice =>
    TextStyle(fontSize: ScreenUtil().setSp(16), color: kBlack);

TextStyle get kSmallTextFeild =>
    TextStyle(fontSize: ScreenUtil().setSp(13), color: kBlack);

TextStyle get kUnSmallTextFeild =>
    TextStyle(fontSize: ScreenUtil().setSp(12), color: kBlack);
TextStyle get kSmallTextStyke => TextStyle(fontSize: ScreenUtil().setSp(12));
TextStyle get kExtraSmallTextStyke =>
    TextStyle(fontSize: ScreenUtil().setSp(10));
TextStyle get kExtraVerySmallTextStyke =>
    TextStyle(fontSize: ScreenUtil().setSp(6));
TextStyle get kContainerheading => TextStyle(fontSize: ScreenUtil().setSp(15));
TextStyle get kTextStyleDevice => TextStyle(fontSize: ScreenUtil().setSp(14));
TextStyle get kSmallStyleDevice => TextStyle(fontSize: ScreenUtil().setSp(14));
TextStyle get kbutStyleDevice => TextStyle(fontSize: ScreenUtil().setSp(8));
TextStyle get kBighead => TextStyle(fontSize: ScreenUtil().setSp(24));
const FontWeight kBoldFontWeight = FontWeight.bold;
const FontWeight kRegularFontWeight = FontWeight.normal;
const FontWeight kLightFontWeight = FontWeight.w400;
const FontWeight kThinFontWeight = FontWeight.w100;

List<BoxShadow> boxshadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.3),
    spreadRadius: 2,
    blurRadius: 3,
    offset: Offset(1, 3), // changes position of shadow
  )
];

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/colors.dart';
import 'package:flutter_application_1/core/theming/font_wight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Wight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font32BblueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsApp.mainblue,
  );
  static TextStyle font13gray = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.gray,
  );
  static TextStyle font16white = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.white,
  );
  static TextStyle font16gray = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.gray,
  );
  static TextStyle font14gray = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsApp.gray,
  );
  static TextStyle font12mainblue = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.mainblue,
  );
}

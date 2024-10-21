import 'package:flutter/material.dart';
import 'package:spotify/helper/constant.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
      background: AppColor.greenColor,
      primary: AppColor.subHeadingTwoColor,
      secondary: AppColor.subHeadingColor,
      tertiary: AppColor.blackColor),
);

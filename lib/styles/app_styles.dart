import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
abstract class AppStyles {
  static final titleTextStyle =
      TextStyle(fontSize: ScreenUtil.getInstance().getSp(18), color: AppColors.mainTextColor);
  static final seachTextStyle =
  TextStyle(fontSize: ScreenUtil.getInstance().getSp(12), color: AppColors.subTextColor);
  static final mainTextStyle =
      TextStyle(fontSize: ScreenUtil.getInstance().getSp(16), color: AppColors.mainTextColor);
  static final mainBlodTextStyle = TextStyle(
      fontSize: ScreenUtil.getInstance().getSp(16),
      fontWeight: FontWeight.bold,
      color: AppColors.mainTextColor);
  static final subTextStyle = TextStyle(
      fontSize: ScreenUtil.getInstance().getSp(14),
      fontWeight: FontWeight.bold,
      color: AppColors.subTextColor);

  static final largeTextStyle =
      TextStyle(fontSize: ScreenUtil.getInstance().getSp(30), color: AppColors.mainTextColor);
}

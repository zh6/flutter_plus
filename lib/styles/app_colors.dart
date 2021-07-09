import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppColors {
  //颜色转换
  static Color hexToColor(String s) {
    // 如果传入的十六进制颜色值不符合要求，返回默认值
    if (s == null ||
        s.length != 7 ||
        int.tryParse(s.substring(1, 7), radix: 16) == null) {
      s = '#999999';
    }
    return new Color(int.parse(s.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static const Color appBg = const Color(0xfffefefe);
  static const Color appBarTopBg = const Color(0xfffefefe);
  static const Color appBarBottomBg = const Color(0xfffefefe);
  static const Color pageBg = const Color(0xfff7f7f7);
  static const Color dividerBg = const Color(0xffdbdce1);
  static const Color titleColor = const Color(0xff060606);
  static const Color hintTextColor = const Color(0xffd1d5dd);
  static const Color mainTextColor = const Color(0xff060606);
  static const Color subTextColor = const Color(0xffb2b9c4);
  static const Color loignColor = const Color(0xFFFE976A);
  static const Color greyColor = const Color(0xFFdadbe0);
  static const Color whileColor = const Color(0xFFffffff);

  /// 主背景
  static const Color primaryBackground = Color(0xFFF4F6FA);

  /// 主文本
  static const Color primaryText = Color(0xFF2D3142);

  /// 主文本灰色
  static const Color primaryGreyText = Color(0xFF9B9B9B);

  /// 主文本灰色
  static const Color primaryGreyText1 = Color(0xFFE0DDF5);

  /// tabBar 默认颜色 灰色
  static const Color tabBarElement = Color(0xFFE0DDF5);

  /// tabBar 激活颜色
  static const Color tabBarActive = Color(0xFF8B63E6);

  /// 分类tab渐变色
  static Color buttonLine1 = Colors.purple[300]!;

  /// 分类tab渐变色
  static const Color buttonLine2 = Color(0xFF7265E3);

  /// 主题色
  static const Color primaryColor = Color(0xFF8B63E6);

  static const Color primaryColorAccent = Color(0xFFE1DDF5);

  /// 价格颜色
  static const Color priceColor = Color(0xFFF77777);

  /// 提货方式-自提
  static const Color deliveryColor1 = Color(0xFFFE9C5E);

  /// 提货方式-物流
  static const Color deliveryColor2 = Color(0xFF6155CC);

  /// 提货方式-自提
  static const Color deliveryBackColor1 = Color.fromRGBO(254, 156, 94, 0.15);

  /// 提货方式-物流
  static const Color deliveryBackColor2 = Color.fromRGBO(97, 85, 204, 0.15);

  /// 加入购物车
  static const Color addToCart2 = Color(0xFFFE9C5E);
  static const Color addToCart1 = Color(0xFFfdcb6e);

  /// 立即采购
  static const Color buyNow1 = Color(0xFFF77777);
  static const Color buyNow2 = Color(0xFFd63031);

  /// splashColor
  static const Color splashColor = Color(0xFFE1DDF5);

  /// 店铺背景渐变
  static const Color supplierColor1 = Color(0xFF8B63E6);
  static const Color supplierColor2 = Color(0xFF7265E3);
}

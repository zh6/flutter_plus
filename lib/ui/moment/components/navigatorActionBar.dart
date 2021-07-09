import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plus/styles/app_colors.dart';

class navigatorActionBar extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final double opacity;
  final double? iconSize;
  navigatorActionBar({required this.icon, this.onTap,required this.opacity,this.iconSize=28});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Color.fromRGBO(99, 99, 99, 1 - opacity),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Icon(
          icon,
          color: opacity == 1 ? AppColors.hexToColor("#2B2B2B") : Colors.white,
          size: iconSize,
        ),
      ),
    );
  }

}
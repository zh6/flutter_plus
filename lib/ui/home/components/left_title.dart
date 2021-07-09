import 'package:flutter/material.dart';
import 'package:flutter_plus/styles/app_colors.dart';
class LeftTitle extends StatelessWidget {
  final Color tipColor;
  final String title;
  const LeftTitle({Key? key, required this.tipColor, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      child: Row(
        children: <Widget>[
          Container(
            color: tipColor,
            margin: EdgeInsets.only(right: 15),
            width: 3,
            height: 14,
          ),
          Text(
            title,
            style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}

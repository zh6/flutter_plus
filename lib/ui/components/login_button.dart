import 'package:flutter/material.dart';
import 'package:flutter_plus/styles/app_colors.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final VoidCallback handleOk;

  const LoginButton({Key? key, required this.handleOk, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handleOk(),
      child: Container(
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom,
          left: 10,
          right: 10,
        ),
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //背景径向渐变
            colors: [AppColors.buttonLine1, AppColors.buttonLine2],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

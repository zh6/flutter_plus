import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorPage extends StatelessWidget {
  final Widget? icon;
  final String? title;
  final String? desc;
  final String? buttonText;
  final VoidCallback buttonAction;
  final bool isEmptyPage;

  ErrorPage(
      {this.icon,
      this.title,
      this.desc,
      this.buttonText,
      required this.buttonAction,
      this.isEmptyPage = false});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: this.icon != null
                  ? this.icon
                  : Lottie.asset(
                      'assets/json/error2.json',
                      width: size.width / 1.3,
                      height: 160,
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
            ),
            !isEmptyPage
                ? Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 12,
                    ),
                    child: Text(
                      this.title ?? '哦豁😯，出现了蜜汁错误！',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                : Container(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.desc ?? '虽然什么也没有,要不刷新看看',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                ),
              ],
            ),
            !isEmptyPage
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: MaterialButton(
                      onPressed: () => buttonAction(),
                      child: Text(
                        this.buttonText ?? '刷新',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

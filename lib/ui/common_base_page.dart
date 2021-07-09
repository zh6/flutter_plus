import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plus/net/base_error.dart';
import 'package:flutter_plus/route/routes.dart';
import 'package:flutter_plus/widgets/error_page.dart';
import 'package:flutter_plus/widgets/page_state.dart';
import 'package:lottie/lottie.dart';

class CommonBasePage extends StatelessWidget {
  final PageState pageState;
  final BaseError? baseError;
  final VoidCallback buttonActionCallback;
  final Widget child;

  const CommonBasePage(
      {Key? key,
      required this.pageState,
      this.baseError,
      required this.buttonActionCallback,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (pageState == PageState.busy || pageState == PageState.idle) {
      return Center(
        child: Lottie.asset(
          'assets/json/loading2.json',
          width: 126,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      );
    }

    if (pageState == PageState.empty) {
      return ErrorPage(
        isEmptyPage: true,
        icon: Lottie.asset(
          'assets/json/empty3.json',
          width: ScreenUtil.getInstance().screenWidth / 1.8,
          height: 220,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        ),
        desc: '暂 无 数 据',
        buttonAction: buttonActionCallback,
      );
    }

    if (pageState == PageState.error) {
      if (baseError is NeedAuth) {
        Future.delayed(Duration(seconds: 2), () {
          Routes.navigateTo(Routes.login, replace: true);
        });
      } else {
        return ErrorPage(
          title: baseError?.code.toString(),
          desc: baseError?.message,
          buttonAction: () async {
            buttonActionCallback();
          },
          buttonText: baseError is NeedAuth ? '登录' : null,
        );
      }
    }

    return child;
  }
}

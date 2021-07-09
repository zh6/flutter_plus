import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plus/common/constant.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;

  const MyAppBar({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _statusHeight = ScreenUtil.getInstance().statusBarHeight;
    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(top: _statusHeight),
      child: this.child,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(Constant.APP_BAR);
}

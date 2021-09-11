import 'dart:io';

import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/route/router.dart';
import 'package:flutter_plus/styles/app_colors.dart';
import 'package:flutter_plus/ui/login_page.dart';
import 'package:flutter_plus/ui/main_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'common/constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  Routers.configureRoutes();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
  if (Platform.isAndroid) {
    //设置Android头部的导航栏透明
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //全局设置透明
        statusBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    setDesignWHD(360.0, 640.0, density: 3);
    String? token = SpUtil.getString(Constant.TOKEN);
    return RefreshConfiguration(
      footerTriggerDistance: 15,
      headerTriggerDistance: 90.0,
      maxOverScrollExtent: 100,
      dragSpeedRatio: 0.91,
      headerBuilder: () => MaterialClassicHeader(),
      footerBuilder: () => ClassicFooter(),
      enableLoadingWhenNoData: false,
      enableRefreshVibrate: false,
      enableLoadMoreVibrate: false,
      hideFooterWhenNotFull: true,
      shouldFooterFollowWhenNotFull: (state) {
        return false;
      },
      child: MaterialApp(
        navigatorKey: navigatorKey,
        theme: ThemeData(
          primaryColor: AppColors.appBarTopBg, //bar的颜色
          scaffoldBackgroundColor: AppColors.appBg, //scaffold的颜色,
        ),
        title: 'Flutter App',
          // home:MainPage(),
          home: TextUtil.isEmpty(token)?LoginPage(): MainPage(),
        //注册路由
        onGenerateRoute: Routers.router.generator,
        ///初始化loading
        builder: (context, child) => Scaffold(
          ///全局点击空白关闭软键盘
          body: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus &&
                  currentFocus.focusedChild != null) {
                FocusManager.instance.primaryFocus!.unfocus();
              }
            },
            child: child,
          ),
        ),
      ),
    );
  }
}

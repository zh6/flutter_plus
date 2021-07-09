import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_plus/common/application.dart';
import '../main.dart';
import 'handler.dart';

// 定义路由配置类
class Routes {
  static String root = "/";
  static String login = "/login";
  static String home = "/home";
  static String personal = "/personal";
  static String breed = "/breed";
  static String breeddetail = "/breeddetail";
  static String test = "/test";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(handlerFunc:
        (BuildContext? context, Map<String, List<String>>? params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(root, handler: rootHandler);
    router.define(login, handler: loginHandler);
    router.define(home, handler: homeHandler);
    router.define(personal, handler: personalHandler);
    router.define(breed, handler: breedHandler);
    router.define(breeddetail, handler: breedDetailHandler);
    router.define(test, handler: testHandler);
  }

  // 自定义的参数跳转,对参数进行encode，解决参数中有特殊字符，影响fluro路由匹配
  static Future navigateTo(path, {params, replace = false}) {
    String query = "";
    if (params != null) {
      int index = 0;
      for (var key in params.keys) {
        var value = Uri.encodeComponent(params[key]);
        if (index == 0) {
          query = "?";
        } else {
          query = query + "\&";
        }
        query += "$key=$value";
        index++;
      }
    }
    path = path + query;
    BuildContext context = navigatorKey.currentState!.context;
    return Application.router!.navigateTo(context, path,
        transition: TransitionType.native, replace: replace);
  }

  //返回页面
  static void pop<T>(BuildContext context, [T? result]) =>
      Navigator.of(context).pop(result);

}

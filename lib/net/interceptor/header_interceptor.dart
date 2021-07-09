import 'package:dio/dio.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter_plus/common/constant.dart';

///header拦截器
class HeaderInterceptor extends InterceptorsWrapper {
  @override
  onRequest(options, handler){
    ///超时
    options.connectTimeout = 20000;
    options.receiveTimeout = 20000;
    //登录接口
    if (options.path.contains("login")) {
      return super.onRequest(options, handler);
    }
    String? token = SpUtil.getString(Constant.TOKEN);
    if (!TextUtil.isEmpty(token)) {
      options.headers['Authorization'] = token;
    }
    return super.onRequest(options, handler);
  }
}

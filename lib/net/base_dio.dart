import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_plus/common/constant.dart';
import 'package:flutter_plus/net/interceptor/log_interceptor.dart';
import 'package:flutter_plus/net/interceptor/response_interceptor.dart';

import 'base_error.dart';
import 'interceptor/header_interceptor.dart';

export 'package:dio/dio.dart';

class BaseDio {
  BaseDio._();
  static BaseDio? _instance;
  static BaseDio getInstance() {
    return _instance ??= BaseDio._();
  }
  Dio getDio() {
    final Dio dio = Dio();
    (dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJson;
    dio.options = BaseOptions(
        baseUrl: Constant.BASE_URL,
        receiveTimeout: 66000,
        connectTimeout: 66000); // 设置超时时间等 ...
    dio.interceptors.add(HeaderInterceptor()); // 添加拦截器，如 token之类，需要全局使用的参数
    dio.interceptors.add(LogsInterceptor());
    dio.interceptors.add(ResponseInterceptor());
    // cookie持久化 异步
    dio.interceptors.add(CookieManager(CookieJar()));
    return dio;
  }
  /**
   * 这里封装了一个 BaseError 类，会根据后端返回的code返回不同的错误类
   */
  BaseError getDioError(e) {
    if (e is DioError) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.sendTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        // timeout
        return OtherError(statusCode: 96, statusMessage: e.error);
      } else if (e.type == DioErrorType.response) {
        // incorrect status, such as 404, 503...
        return OtherError(statusCode: 97, statusMessage: e.error);
      } else if (e.type == DioErrorType.cancel) {
        // to be continue...
        return OtherError(statusCode: 98, statusMessage: e.error);
      } else {
        // dio将原error重新套了一层
        e = e.error;
        if (e is NeedAuth) {
          return NeedAuth();
        } else if (e is OtherError) {
          return OtherError(
              statusCode: e.statusCode, statusMessage: e.statusMessage);
        } else if (e is SocketException) {
          return NetworkTimeOutError();
        }
      }
    }
    return UnknownError();
  }
}

// 必须是顶层函数
_parseAndDecode(String response) {
  return jsonDecode(response);
}

parseJson(String text) {
  return compute(_parseAndDecode, text);
}

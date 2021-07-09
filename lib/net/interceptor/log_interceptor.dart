import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_plus/common/constant.dart';
///Log 拦截器
class LogsInterceptor extends InterceptorsWrapper {
  static List<Map> sHttpResponses = [];
  static List<String> sResponsesHttpUrl = [];

  static List<Map<String, dynamic>> sHttpRequest = [];
  static List<String> sRequestHttpUrl = [];

  static List<Map<String, dynamic>> sHttpError = [];
  static List<String> sHttpErrorUrl = [];

  @override
  onRequest(RequestOptions options,RequestInterceptorHandler handler) async {
    if (Constant.DEBUG) {
      print("请求url：${options.baseUrl}${options.path} ${options.method}");
      print('请求头: ' + options.headers.toString());
      if (options.data != null) {
        print('请求参数: ' + options.data.toString());
      }
    }
    try {
      addLogic(sRequestHttpUrl, options.path);
      var data;
      if (options.data is Map) {
        data = options.data;
      } else {
        data = Map<String, dynamic>();
      }
      var map = {
        "header:": {...options.headers},
      };
      if (options.method == "POST") {
        map["data"] = data;
      }
      addLogic(sHttpRequest, map);
    } catch (e) {
      print(e);
    }
    return super.onRequest(options, handler);
  }

  @override
  onResponse(Response response,ResponseInterceptorHandler handler) async {
    if (Constant.DEBUG) {
      if (response != null) {
        print('返回参数: ' + response.toString());
      }
    }
    if (response.data is Map || response.data is List) {
      try {
        var data = Map<String, dynamic>();
        data["data"] = response.data;
        addLogic(sResponsesHttpUrl, response.realUri.toString());
        addLogic(sHttpResponses, data);
      } catch (e) {
        print(e);
      }
    } else if (response.data is String) {
      try {
        var data = Map<String, dynamic>();
        data["data"] = response.data;
        addLogic(sResponsesHttpUrl, response.realUri.toString());
        addLogic(sHttpResponses, data);
      } catch (e) {
        print(e);
      }
    } else if (response.data != null) {
      try {
        String data = response.data.toJson();
        addLogic(sResponsesHttpUrl,response.realUri.toString());
        addLogic(sHttpResponses, json.decode(data));
      } catch (e) {
        print(e);
      }
    }
    return super.onResponse(response, handler);
  }

  @override
  onError(DioError err,ErrorInterceptorHandler handler) async {
    if (Constant.DEBUG) {
      print('请求异常信息: ' + (err.error.toString()));
    }
    try {
      addLogic(sHttpErrorUrl, err.requestOptions.path);
      var errors = Map<String, dynamic>();
      errors["error"] = err.message;
      addLogic(sHttpError, errors);
    } catch (e) {
      print(e);
    }
    return super.onError(err, handler);
  }

  static addLogic(List list, data) {
    if (list.length > 20) {
      list.removeAt(0);
    }
    list.add(data);
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_plus/net/base_error.dart';

import '../base_dio.dart';
class ResponseInterceptor extends InterceptorsWrapper {
 @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
   if (response.data['state']==0) {
     return  handler.resolve(response);
   } else {
     if (response.data['state'] == 97) {
       throw NeedAuth();
     } else {
       throw OtherError(statusCode: response.data['state'], statusMessage: response.data['msg']);
     }
   }
  }

}
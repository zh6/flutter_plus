import 'package:dio/dio.dart';

import 'constant.dart';

class DataException implements Exception {
  DataException({required this.message});

  DataException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = Constant.errorRequestCancelled;
        break;
      case DioErrorType.connectTimeout:
        message = Constant.errorConnectionTimeout;
        break;
      case DioErrorType.receiveTimeout:
        message = Constant.errorReceiveTimeout;
        break;
      case DioErrorType.response:
        message = _handleError(dioError.response!.statusCode!);
        break;
      case DioErrorType.sendTimeout:
        message = Constant.errorSendTimeout;
        break;
      default:
        message = Constant.errorInternetConnection;
        break;
    }
  }

  String message = "";

  String _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return Constant.errorBadRequest;
      case 404:
        return Constant.errorRequestNotFound;
      case 500:
        return Constant.errorIntenalServer;
      default:
        return Constant.errorSomethingWentWrong;
    }
  }

  @override
  String toString() => message;
}

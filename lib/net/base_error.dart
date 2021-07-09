abstract class BaseError implements Exception{
  final int code;
  final String message;

  BaseError({required this.code, required this.message});
}

class NeedAuth implements BaseError {
  @override
  int get code => 97;

  @override
  String get message => "非法访问，请使用正确的token";
}
class NetworkTimeOutError implements BaseError {
  @override
  int get code => 98;

  @override
  String get message => "网络错误！";
}
class UnknownError implements BaseError {
  @override
  int get code => 99;

  @override
  String get message => "未知错误！";
}

class OtherError implements BaseError {
  final int statusCode;
  final String statusMessage;

  OtherError({required this.statusCode, required this.statusMessage});

  @override
  int get code => statusCode;

  @override
  String get message => statusMessage;
}

// import 'dart:async';
// import 'dart:convert';
//
// import 'package:crypto/crypto.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_plus/common/constant.dart';
// import 'package:flutter_plus/common/exceptions.dart';
// import 'package:flutter_plus/net/interceptor/header_interceptor.dart';
// import 'package:flutter_plus/net/interceptor/log_interceptor.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:multi_image_picker/multi_image_picker.dart';
//
// final httpUtilProvider = Provider<HttpUtil>((ref) => HttpUtil());
//
// class HttpUtil {
//   static final BaseOptions options = BaseOptions(
//     //请求基地址,可以包含子路径
//     baseUrl: Constant.BASE_URL,
//     //连接服务器超时时间，单位是毫秒.
//     connectTimeout: 10000,
//     //响应流上前后两次接受到数据的间隔，单位为毫秒。
//     receiveTimeout: 5000,
//   );
//   static final Dio dio = new Dio(options);
//
//   //拦截器部分
//   static tokenInter() {
//     dio.interceptors.add(new HeaderInterceptor());
//     dio.interceptors.add(new LogsInterceptor());
//   }
//
//   /// 动态替换BaseUrl
//   _setBaseUrl(String? baseUrl) {
//     if (baseUrl != null) {
//       options.baseUrl = baseUrl;
//     } else {
//       options.baseUrl = Constant.BASE_URL;
//     }
//   }
//
//   HttpUtil() {
//     tokenInter();
//   }
//
//   Future<dynamic> request(url, {baseUrl, queryData, formData, options}) async {
//     _setBaseUrl(baseUrl);
//     try {
//       Response response = await dio.post(url,
//           data: formData, queryParameters: queryData, options: options);
//       return response.data;
//     } on DioError catch (error) {
//       throw DataException.fromDioError(error);
//     }
//   }
//
//   Future<List<String>> uploadOSS(List<Asset> list) async {
//     List<String> urlList = [];
//     if (list.isEmpty) {
//       return urlList;
//     }
//     _setBaseUrl(Constant.OSSurl);
//     String policyText = '{"expiration": "2120-01-01T12:00:00.000Z",'
//         '"conditions": [["content-length-range", 0, 1048576000]]}';
//     List<int> uPolicyText = utf8.encode(policyText);
//     String bPolicyText = base64.encode(uPolicyText);
//     List<int> policy = utf8.encode(bPolicyText);
//     List<int> keyM = utf8.encode(Constant.accesskey);
//     List<int> signaturePre = new Hmac(sha1, keyM).convert(policy).bytes;
//     String signature = base64.encode(signaturePre);
//     for (Asset asset in list) {
//       ByteData byteData = await asset.getByteData();
//       List<int> imageData = byteData.buffer.asUint8List();
//       // 构建formData数据
//       FormData data = new FormData.fromMap({
//         'key': "images/" + asset.name!,
//         'policy': bPolicyText,
//         'OSSAccessKeyId': Constant.OSSAccessKeyId,
//         'signature': signature,
//         'file': MultipartFile.fromBytes(imageData),
//       });
//       try {
//         await dio
//             .post("",
//                 data: data,
//                 options: Options(
//                     contentType: "multipart/form-data",
//                     responseType: ResponseType.json))
//             .then(
//           (value) {
//             if (value.statusCode == 204) {
//               urlList.add(Constant.OSSurl + '/images/${asset.name!}');
//             }
//           },
//         );
//       } on DioError catch (error) {
//         throw DataException.fromDioError(error);
//       }
//     }
//     return urlList;
//   }
// }

import 'package:dio/dio.dart';
import 'package:flutter_plus/model/moment/moment_response.dart';
import 'package:retrofit/retrofit.dart';
import 'base_dio.dart';
part 'api_client.g.dart';
@RestApi()
abstract class ApiClient {
  factory ApiClient({Dio? dio,String? baseUrl}) {
    dio = BaseDio.getInstance().getDio();
    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @POST('login')
  Future<HttpResponse> login(@Body() Map<String, dynamic> map);
  @POST('api/cat/moment/page')
  Future<MomentResponse> getmoment();
  @POST('api/cat/breed/page')
  Future<HttpResponse> getbreed();
}

import 'package:fluro/fluro.dart';
import 'package:flutter_plus/ui/main_page.dart';
import 'package:flutter_plus/ui/home/breed_detail_page.dart';
import 'package:flutter_plus/ui/home/breed_page.dart';
import 'package:flutter_plus/ui/login_page.dart';
import 'package:flutter_plus/ui/moment/test_page.dart';
import 'package:flutter_plus/ui/personal/personal_page.dart';
import 'package:flutter_plus/ui/splash_page.dart'; // 引入路由包依赖文件
var rootHandler = Handler(handlerFunc: (_, params) => SplashPage());
var loginHandler = new Handler(handlerFunc: (_, params) => LoginPage());
var homeHandler = new Handler(handlerFunc: (_, params) {
  return MainPage();
});
var personalHandler = new Handler(handlerFunc: (_, params) => PersonalPage());
var breedHandler = new Handler(handlerFunc: (_, params) => BreedPage());
var breedDetailHandler = new Handler(handlerFunc: (_, params) => BreedDetailPage(title:params['title']!.first,content:params['content']!.first));
var testHandler= new Handler(handlerFunc: (_, params) => TestPage());


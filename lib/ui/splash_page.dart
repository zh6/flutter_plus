import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/splash.png", width: 200.0, height: 200.0),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  '来了老弟',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(color: Colors.red[700], fontSize: 16.0),
                ))
          ],
        ),
      ),
    );
  }

  @override
  Future<void> initState() async {
    // 启动的时候将屏幕设置成全屏模式
    // SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
    // Stream.fromIterable([1]).delay(Duration(seconds: 2)).listen((_) {
    //   if (token != null && token != '') {
    //     Routes.navigateTo(Routes.home, replace: true);
    //   }else{
    //     Routes.navigateTo(Routes.login, replace: true);
    //   }
    // }); // [after one second delay] prints 1, 2, 3, 4 immediately
  }

  @override
  void dispose() {
    // 关闭的时候将屏幕设置成原来的状态
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }
}

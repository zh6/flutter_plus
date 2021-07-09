import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:flutter_plus/styles/app_colors.dart';
// 自定义分页效果
class MyCustomPagination extends SwiperPlugin {
  @override
  Widget build(BuildContext context, SwiperPluginConfig? config) {
    int activeIndex=0;
    if(config!=null){
      activeIndex=config.activeIndex!;
    }
    List<Widget> list = [];
    for (var i = 0; i < config!.itemCount!; i++) {
      if (i == activeIndex) {
        list.add(Container(
          width: 20,
          height: 5,
          margin: EdgeInsets.only(left: 2.5, right: 2.5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: AppColors.primaryColor),
        ));
        continue;
      }
      list.add(Container(
        width: 10,
        height: 5,
        margin: EdgeInsets.only(left: 2.5, right: 2.5),
        decoration: BoxDecoration(
            borderRadius: (BorderRadius.circular(5)), color: Color(0xffC6CBCE)),
      ));
    }
    return Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: list,
        ));
  }
}
// 自定义分页效果
class MyCustomNumPagination extends SwiperPlugin {
  @override
  Widget build(BuildContext context, SwiperPluginConfig? config) {
    return Container(
      child: Positioned(
        bottom: 10,
        right: 10,
        child: Container(
          height: 25,
          width: 35,
          decoration: BoxDecoration(
            color: Color.fromRGBO(39, 39, 39, 0.7),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  (config!.activeIndex! + 1).toString(),
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '/',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  config.itemCount.toString(),
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

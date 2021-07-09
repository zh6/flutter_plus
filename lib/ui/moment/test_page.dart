import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/model/base/home.dart';
import 'package:flutter_plus/styles/app_colors.dart';
import 'package:flutter_plus/ui/moment/components/navigatorActionBar.dart';
import 'package:flutter_plus/ui/home/components/head_swiper.dart';
class TestPage extends HookWidget {
  final List<SwiperEntity> swiperList = [
    SwiperEntity(
        "轮播图1",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
    SwiperEntity(
        "轮播图1",
        'http://pic.51yuansu.com/pic3/cover/02/61/33/59fc2546ebeb7_610.jpg',
        "/home"),
  ];

  @override
  Widget build(BuildContext context) {
    final appBarOpacity = useState(0.0);
    Future _gerData() async {
      return appBarOpacity.value == 1;
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification notification) {
              if (notification.metrics.axis == Axis.vertical) {
                var scrollY = notification.metrics.pixels;
                if (scrollY > 0) {
                  var opacity = scrollY / 230;
                  appBarOpacity.value = opacity <= 1 ? opacity : 1;
                } else if (scrollY < 0) {
                  appBarOpacity.value = 0;
                }
              }
              return false;
            },
            child: SingleChildScrollView(
              child: FutureBuilder(
                future: _gerData(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return Container(
                    color: AppColors.hexToColor("#F2F2F2"),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 300,
                          child: HeadSwiper(swiperList:swiperList,),
                        ),
                        // 商品详情
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 5500,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            height: 75,
            child: Container(
              color: Color.fromRGBO(255, 255, 255, appBarOpacity.value),
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  navigatorActionBar(
                      icon: Icons.navigate_before,
                      opacity: appBarOpacity.value,
                      onTap: () {
                        Navigator.of(context).pop();
                      }),
                  Container(
                    width: 240,
                    child: Offstage(
                      offstage: appBarOpacity.value < 1,
                      child: TabBar(
                        labelPadding: EdgeInsets.all(0),
                        indicatorColor: Colors.red,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "PingFang"),
                        unselectedLabelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            fontFamily: "PingFang"),
                        controller: useTabController(initialLength: 4),
                        tabs: <Widget>[
                          ...["商品", "评价", "详情", "推荐"].map((item) {
                            return Text(item);
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
                  navigatorActionBar(
                      icon: Icons.share,
                      opacity: appBarOpacity.value,
                      iconSize: 18,
                      onTap: () {
                        Navigator.of(context).pop();
                      }),
                  navigatorActionBar(
                      icon: Icons.more_horiz,
                      opacity: appBarOpacity.value,
                      onTap: () {
                        Navigator.of(context).pop();
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

SliverFixedExtentList buildSliverFixedExtentList() {
  return SliverFixedExtentList(
    itemExtent: 100,
    delegate: new SliverChildBuilderDelegate(
      (BuildContext context, num index) {
        ///子条目的布局样式
        return Container(
          child: Text("list $index"),
          margin: EdgeInsets.all(10),
        );
      },
      childCount: 20,
    ),
  );
}

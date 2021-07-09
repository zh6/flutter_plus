import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/model/base/home.dart';
import 'package:flutter_plus/route/routes.dart';
import 'package:flutter_plus/styles/app_colors.dart';
import 'package:flutter_plus/ui/home/components/head_swiper.dart';
import 'package:flutter_plus/ui/home/components/home_horizontal_view.dart';
import 'package:flutter_plus/widgets/cache_image.dart';

import 'components/left_title.dart';
import 'components/sliver_header.dart';

/*
 * 首页
 */
class HomePage extends HookWidget {
  List<SwiperEntity> swiperList = [
    SwiperEntity(
        "轮播图1",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
    SwiperEntity(
        "轮播图1",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
  ];
  List<GridEntity> brandList = [
    GridEntity(
        "来了老弟1",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
    GridEntity(
        "来了老弟2",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
    GridEntity(
        "来了老弟1",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
    GridEntity(
        "来了老弟2",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
    GridEntity(
        "来了老弟1",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
    GridEntity(
        "来了老弟2",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
    GridEntity(
        "来了老弟1",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
    GridEntity(
        "来了老弟2",
        'http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg',
        "/home"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
                  SliverHeader(),
                  SliverToBoxAdapter(
                    child: HeadSwiper(
                      swiperList: swiperList,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: HorizontalView(brandList: brandList),
                  ),
                ] +
                hotCommodity(brandList)));
  }

  /// 热销商品区域
  List<Widget> hotCommodity(List<GridEntity> hotList) {
    return [
      SliverToBoxAdapter(
        child: Container(
            margin: EdgeInsets.only(left: 15, top: 15),
            child: LeftTitle(
              tipColor: AppColors.primaryColor,
              title: '热销商品',
            )),
      ),
      SliverPadding(
        padding: EdgeInsets.all(15.0),
        sliver: SliverGrid(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return GestureDetector(
                onTap: () =>Routes.navigateTo(Routes.breed),
                child: CacheImage(
                  url:hotList[index].imgUrl,
                ),
              );
            }, childCount: hotList.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 1.0)),
      ),
    ];
  }
}

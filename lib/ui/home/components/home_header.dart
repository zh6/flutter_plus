import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/model/base/home.dart';
import 'package:flutter_plus/styles/app_colors.dart';
import 'package:flutter_plus/widgets/app_topbar.dart';
import 'package:flutter_plus/widgets/my_appbar.dart';
import 'package:flutter_plus/ui/components/persistent_header_builder.dart';
import 'package:flutter_plus/ui/home/components/head_swiper.dart';

class HomeHeader extends HookWidget {
  double _expandedHeigh = 300;
  List<SwiperEntity> swiperList;
  HomeHeader({Key? key, required this.swiperList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        pinned: true,
        floating: false,
        delegate: PersistentHeaderBuilder(
            expandedHeight: _expandedHeigh,
            builder: (ctx, offset) => Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    buildAppBar(offset),
                    buildSwiper(offset),
                    buildTopBar(offset),
                  ],
                )));
  }

  Widget buildTopBar(double shrinkOffset) => Opacity(
      opacity: 1 - shrinkOffset / _expandedHeigh,
      child: Container(
        margin: EdgeInsets.only(top: ScreenUtil.getInstance().statusBarHeight),
        child: Wrap(
          children: [
            Container(
              height: 50,
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_rounded,
                        color: AppColors.subTextColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '搜索',
                        style: TextStyle(color: AppColors.subTextColor),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0x30060606),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Color(0xffd8d1d3),
                      width: 0.2,
                    ),
                  ),
                ),
              ),
              // color: AppColors.primaryColor,
            )
          ],
        ),
      ));

  Widget buildAppBar(double shrinkOffset) => Opacity(
      opacity: shrinkOffset / _expandedHeigh,
      child: MyAppBar(
        child: SearchBar(),
      ));

  Widget buildSwiper(double shrinkOffset) {
    return Opacity(
        opacity: 1 - shrinkOffset / _expandedHeigh, child: HeadSwiper(swiperList: swiperList,));
  }
}

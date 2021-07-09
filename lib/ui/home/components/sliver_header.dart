import 'package:customizable_space_bar/customizable_space_bar.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_plus/styles/app_colors.dart';

class SliverHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SliverHeaderState();
}

class SliverHeaderState extends State<SliverHeader> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: IconButton(
            icon: Icon(
              Icons.icecream,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: IconButton(
              icon: Icon(
                Icons.crop_free,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
      //右侧的内容和点击事件啥的
      elevation: 0,
      //阴影的高度
      forceElevated: false,
      //黑底白字，lignt 白底黑字
      expandedHeight: 100.0,
      //默认高度是状态栏和导航栏的高度，如果有滚动视差的话，要大于前两者的高度
      floating: false,
      //滑动到最上面，再滑动是否隐藏导航栏的文字和标题等的具体内容，为true是隐藏，为false是不隐藏
      pinned: true,
      //是否固定导航栏，为true是固定，为false是不固定，往上滑，导航栏可以隐藏
      snap: false,
      //只跟floating相对应，如果为true，floating必须为true，也就是向下滑动一点儿，整个大背景就会动画显示全部，网上滑动整个导航栏的内容就会消失
      flexibleSpace: CustomizableSpaceBar(builder: (context, scrollingRate) {
        return Container(
            color: AppColors.primaryColor,
            // padding: EdgeInsets.only(bottom: 10),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: ScreenUtil.getInstance().screenWidth * 0.9 -
                      70 * scrollingRate,
                  child: Wrap(
                    children: [
                      Container(
                        height: 50,
                        child: Center(
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 25),
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
                                  style:
                                      TextStyle(color: AppColors.subTextColor),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: AppColors.whileColor,
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
                )));
      }),
    );
  }
}

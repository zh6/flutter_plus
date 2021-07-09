import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/model/base/home.dart';
import 'package:flutter_plus/route/router.dart';
import 'package:flutter_plus/styles/app_colors.dart';
import 'package:flutter_plus/widgets/cache_image.dart';
import 'package:flutter_plus/widgets/over_scroll_behavior.dart';
import 'left_title.dart';

class HorizontalView extends HookWidget {
  final List<GridEntity> brandList;

  const HorizontalView({Key? key, required this.brandList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 15),
      child: Column(
        children: <Widget>[
          LeftTitle(
            tipColor: AppColors.primaryColor,
            title: '品牌专场',
          ),
          Container(
            height: 146,
            child: ScrollConfiguration(
              behavior: OverScrollBehavior(),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return Padding(padding: EdgeInsets.only(right: 10));
                },
                padding: EdgeInsets.all(10),
                itemCount: brandList.length,
                itemBuilder: (BuildContext context, int index) {
                  return AspectRatio(
                    aspectRatio: 3 / 2,
                    child: GestureDetector(
                      onTap: () {
                        Flurorouter.navigateTo(Flurorouter.test);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 9.0,
                              spreadRadius: 0.6,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: CacheImage(
                            url: brandList[index].imgUrl,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

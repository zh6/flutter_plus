import 'dart:ui';

import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plus/ui/personal/personal_page.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SliverDelegate extends SliverPersistentHeaderDelegate {
  BuildContext context;
  GlobalKey textKey;
  Rect? textSize;
  bool isCreatePage;
  SliverDelegate(this.context, this.textKey, this.textSize,{this.isCreatePage=false}) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      textSize = WidgetUtil.getWidgetBounds(textKey.currentContext!);
      context.refresh(textSizeProvider).getTextRect(textSize!);
    });
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double textWidth = textSize != null ? textSize!.width : 0.0;
    double maxShrinkOffset = this.maxExtent - this.minExtent;
    double t = (shrinkOffset / maxShrinkOffset).clamp(0.0, 1.0);
    double mt = Tween<double>(begin: 66.0, end: 16.0).transform(t);
    double ctt = Tween<double>(begin: 0, end: 32).transform(t);
    double minTop = mt + ScreenUtil.getInstance().statusBarHeight;
    double textTop = ((maxShrinkOffset - shrinkOffset) / 3 + minTop) >= minTop
        ? ((maxShrinkOffset - shrinkOffset) / 3 + minTop)
        : minTop;
    double textLeft = (ScreenUtil.getInstance().screenWidth - textWidth) / 2;
    textLeft = textLeft - (textLeft - 60) * t; // left
    double cTextLeft = textLeft + ctt; // center
    double imt = Tween<double>(begin: 0.0, end: 12).transform(t);
    double imageTop = minTop - imt;
    double imageLeft = (ScreenUtil.getInstance().screenWidth - 56) / 2;
    imageLeft = imageLeft - (imageLeft - 6) * t; // left
    double cImageLeft = imageLeft + ctt; // center
    double scaleImageValue = Tween<double>(begin: 1, end: 0.6).transform(t);
    double opacity = 1.0 - Interval(0, 1).transform(t);

    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
                Theme.of(context).highlightColor
              ],
              tileMode: TileMode.mirror,
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Opacity(
            opacity: opacity,
            child: Stack(
              children: [
                LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  return FadeInImage.memoryNetwork(
                    height: constraints.maxHeight,
                    width: ScreenUtil.getInstance().screenWidth,
                    placeholder: kTransparentImage,
                    fit: BoxFit.cover,
                    image:
                        "http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg",
                  );
                }),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(249, 249, 249, 1).withOpacity(0),
                        Color.fromRGBO(249, 249, 249, 1).withOpacity(1),
                      ],
                      stops: [0, 0.96],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 16,
                            sigmaY: 16,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(249, 249, 249, 1)
                                  .withOpacity(0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 26,
                  child: Container(
                    width: ScreenUtil.getInstance().screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _createNumTag("22", '作品'),
                        _createNumTag("22", '赞过'),
                        _createNumTag('666', '粉丝'),
                        _createNumTag('36', '关注'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 6,
          top: 32,
          child: !isCreatePage
              ? IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black87,
              size: 18,
            ),
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => MyPage()));
            },
          )
              : IconButton(
            icon: Icon(
              Icons.insert_comment_rounded,
              color: Colors.black87,
              size: 18,
            ),
            onPressed: () {},
          ),
        ),
        Positioned(
          left: 6,
          top: 32,
          child: isCreatePage
              ? IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black87,
              size: 17,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
              : Container(),
        ),
        Positioned(
          top: imageTop,
          left: isCreatePage ? cImageLeft : imageLeft,
          child: Transform.scale(
            scale: scaleImageValue,
            child: ClipOval(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    "http://pic.51yuansu.com/pic3/cover/02/88/54/5ab0ce0084961_610.jpg",
                fit: BoxFit.cover,
                width: 56.0,
                height: 56.0,
              ),
            ),
          ),
        ),
        Positioned(
          top: textTop,
          left: isCreatePage ? cTextLeft : textLeft,
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Text(
              "走在冷风中",
              key: textKey,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceHanSans',
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            );
          }),
        ),
      ],
    );
  }

  Column _createNumTag(String value, String name) {
    return Column(
      children: [
        Text(
          value,
          textAlign: TextAlign.center,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontFamily: 'SourceHanSans',
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  double get maxExtent => 300;

  @override
  double get minExtent => 86.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

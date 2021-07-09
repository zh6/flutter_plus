import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/model/base/home.dart';
import 'package:flutter_plus/ui/components/header_swiper_pagination.dart';
import 'package:flutter_plus/widgets/cache_image.dart';

class HeadSwiper extends HookWidget {
  final List<SwiperEntity> swiperList;

  HeadSwiper({Key? key, required this.swiperList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final indexPage = useState(0);
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 10, left: 15, right: 15),
      color: Colors.white,
      child: Stack(children: <Widget>[
        Swiper(
          loop: false,
          autoplay: true,
          autoplayDelay: 4000,
          duration: 750,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 135,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CacheImage(
                  url: swiperList[index].imgUrl,
                ),
              ),
            );
          },
          onIndexChanged: (index) {
            indexPage.value = index;
          },
          index: indexPage.value,
          itemCount: swiperList.length,
          pagination: MyCustomPagination(),
        ),
      ]),
    );
  }
}

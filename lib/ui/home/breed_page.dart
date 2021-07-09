import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/model/breed/breed.dart';
import 'package:flutter_plus/provider/breed_provider.dart';
import 'package:flutter_plus/route/router.dart';
import 'package:flutter_plus/widgets/app_topbar.dart';
import 'package:flutter_plus/widgets/my_appbar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BreedPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          child: CustomBar(
        title: "品种百科",
        isBack: true,
      )),
      body: CustomScrollView(
        slivers: [
          buildSliverFixedExtentList(),
        ],
      ),
    );
  }

  SliverFixedExtentList buildSliverFixedExtentList() {
    final dataList = useProvider(breedProvider);
    return SliverFixedExtentList(
      itemExtent: 200,
      delegate: new SliverChildBuilderDelegate(
        (_, index) {
          BreedEntity item = dataList[index];
          Map<String, String> p = {"title": item.name, "content": item.content};

          ///子条目的布局样式
          return GestureDetector(
              onTap: () => Flurorouter.navigateTo(Flurorouter.breeddetail, params: p),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      item.picture,
                      fit: BoxFit.cover,
                    ),
                    Center(
                        child: Text(
                      item.name,
                      style: TextStyle(
                          fontSize: 30, color: Colors.white),
                    )),
                  ],
                ),
                margin: EdgeInsets.all(5),
              ));
        },
        childCount: dataList.length,
      ),
    );
  }
}

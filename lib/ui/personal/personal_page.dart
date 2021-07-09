import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/common/constant.dart';
import 'package:flutter_plus/styles/app_colors.dart';
import 'package:flutter_plus/widgets/app_topbar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

import 'components/sliver_delegate.dart';

/*
 * 我的页面
 */
final textSizeProvider = StateNotifierProvider<textSizwNotifier, Rect>((ref) {
  return textSizwNotifier();
});

class textSizwNotifier extends StateNotifier<Rect> {
  textSizwNotifier() : super(Rect.zero);

  void getTextRect(Rect text) {
    state = text;
  }
}

class PersonalPage extends HookWidget {
  final GlobalKey textKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final textSize = useProvider(textSizeProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loadAssets();
        },
        child: Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: SliverDelegate(context, textKey, textSize,isCreatePage: true),
            pinned: true,
          ),
          buildSliverFixedExtentList(),
        ],
      ),
    );
  }
}

Widget buildTopBar() => Container(
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
    );

Widget topBar() => Container(
      height: Constant.APP_BAR + ScreenUtil().statusBarHeight,
      color: AppColors.whileColor,
      child: SearchBar(),
    );

SliverFixedExtentList buildSliverFixedExtentList() {
  return SliverFixedExtentList(
    itemExtent: ScreenUtil.getInstance().getHeight(100),
    delegate: new SliverChildBuilderDelegate(
      (BuildContext context, num index) {
        ///子条目的布局样式
        return Container(
          child: Text("list $index"),
          margin: EdgeInsets.all(10),
        );
      },
      childCount: 10,
    ),
  );
}

Future<List<Asset>> loadAssets() async {
  try {
    return await MultiImagePicker.pickImages(
      // 选择图片的最大数量
      maxImages: 9,
      // 是否支持拍照
      enableCamera: true,
      materialOptions: MaterialOptions(
          // 显示所有照片，值为 false 时显示相册
          startInAllView: true,
          allViewTitle: '所有照片',
          actionBarColor: '#2196F3',
          textOnNothingSelected: '没有选择照片'),
    );
  } on Exception catch (e) {
    e.toString();
  }
  return [];
}

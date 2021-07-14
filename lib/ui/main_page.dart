import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_plus/model/base/tab.dart';
import 'package:flutter_plus/styles/app_colors.dart';
import 'package:flutter_plus/ui/personal/personal_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'discovery/discovery_page.dart';
import 'home/home_page.dart';
import 'message/message_page.dart';

final navigationProvider =
    StateNotifierProvider<navigationNotifier, int>((ref) {
  return navigationNotifier();
});

class navigationNotifier extends StateNotifier<int> {
  navigationNotifier() : super(0);

  void selectPage(int index) {
    state = index;
  }
}

class MainPage extends HookWidget {
  final pageList = [
    TabEntity(HomePage(), "首页", Icons.home),
    TabEntity(DiscoveryPage(), "社区", Icons.supervised_user_circle),
    TabEntity(MessagePage(), "消息", Icons.message),
    TabEntity(PersonalPage(), "我的", Icons.person)
  ];

  @override
  Widget build(BuildContext context) {
    DateTime? lastPopTime;
    final navigation = useProvider(navigationProvider);
    return WillPopScope(
      onWillPop: () async {
        if (lastPopTime == null ||
            DateTime.now().difference(lastPopTime!) > Duration(seconds: 2)) {
          Fluttertoast.showToast(msg: "再按一次退出");
          lastPopTime = DateTime.now();
          return false;
        } else {
          lastPopTime = DateTime.now();
          // 退出app
          return await SystemChannels.platform
              .invokeMethod('SystemNavigator.pop');
        }
      },
      child: Scaffold(
        body: IndexedStack(
          index: navigation,
          children: pageList.map((item) => item.widget).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.appBarBottomBg,
          fixedColor: AppColors.mainTextColor,
          unselectedItemColor: AppColors.subTextColor,
          items: pageList
              .map((info) => BottomNavigationBarItem(
                  label: info.title, icon: Icon(info.icon)))
              .toList(),
          currentIndex: navigation,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            context.refresh(navigationProvider).selectPage(index);
          },
        ),
      ),
    );
  }
}

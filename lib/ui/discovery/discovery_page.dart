import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/model/moment/moment.dart';
import 'package:flutter_plus/provider/moment_provider.dart';
import 'package:flutter_plus/route/router.dart';
import 'package:flutter_plus/widgets/app_topbar.dart';
import 'package:flutter_plus/widgets/my_appbar.dart';
import 'package:flutter_plus/widgets/refresh.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../common_base_page.dart';
class DiscoveryPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final postState = useProvider(momentProvider);
    final scrollController = useScrollController();
    return Scaffold(
      appBar: MyAppBar(
        child: CustomBar(
          title: "标题",
        ),
      ),
      body: CommonBasePage(
        pageState: postState.pageState,
        baseError: postState.error,
        buttonActionCallback: () {
          print("刷新");
          context.refresh(momentProvider).initData(isRefresh: true);
        },
        child: Refresh(
            controller: context.refresh(momentProvider).refreshController,
            onLoading: () async {
              context.refresh(momentProvider).initData();
            },
            onRefresh: () async {
              context.refresh(momentProvider).initData(isRefresh: true);
            },
            content: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Padding(padding: EdgeInsets.only(top: 12));
              },
              padding: EdgeInsets.fromLTRB(12, 18, 12, 18),
              reverse: false,
              controller: scrollController,
              itemCount: postState.list.length,
              itemBuilder: (BuildContext context, int index) {
                MomentEntity item = postState.list[index];
                return Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      onTap: () {
                        Routers.navigateTo(Routers.test);
                      },
                      title: Text(item.content.toString(),
                          maxLines: 1, overflow: TextOverflow.ellipsis),
                    ));
              },
            )),
      ),
    );
  }
}

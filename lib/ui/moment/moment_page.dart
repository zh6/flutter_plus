import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/model/moment/moment.dart';
import 'package:flutter_plus/provider/moment_provider.dart';
import 'package:flutter_plus/route/router.dart';
import 'package:flutter_plus/widgets/app_topbar.dart';
import 'package:flutter_plus/widgets/my_appbar.dart';
import 'package:flutter_plus/widgets/refresh.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
/*
 * 社区
 */
class MomentPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final datalist = useProvider(momentProvider);
    return Scaffold(
        appBar: MyAppBar(
          child: CustomBar(
            title: "标题",
          ),
        ),
        body: Refresh(
          controller: context.refresh(momentProvider).refreshController,
          onRefresh: () =>
              context.refresh(momentProvider).initData(isRefresh: true),
          content: CustomScrollView(slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) {
                  MomentEntity item = datalist.list[index];
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
                childCount: datalist.list.length,
              ),
            )
          ]),
          onLoading: () {},
        ));
  }
}

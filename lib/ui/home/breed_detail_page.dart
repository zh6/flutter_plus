import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_plus/widgets/app_topbar.dart';
import 'package:flutter_plus/widgets/my_appbar.dart';
class BreedDetailPage extends HookWidget {
  BreedDetailPage({required this.title,required this.content});
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: MyAppBar(child: CustomBar(title: title,isBack: true,),),
        body: SingleChildScrollView(
            child: Html(
          data:content,
        )),
      );

}

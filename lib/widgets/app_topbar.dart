import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/styles/app_colors.dart';
import 'package:flutter_plus/styles/app_styles.dart';
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      margin:EdgeInsets.symmetric(horizontal: 15),
      child: Row(children: [
        Icon(Icons.search_rounded,color: AppColors.subTextColor,),
        SizedBox(width: 5,),
        Text('搜索',style: AppStyles.seachTextStyle,),
      ]),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: AppColors.dividerBg,
          width: 1,
        ),
      ),
    ),)  ;

  }
}

//正常的title
class CustomBar extends HookWidget {
  final bool? isBack;
  final String title;
  final String? menu;
  final VoidCallback? onMenu;

  CustomBar({required this.title, this.isBack, this.onMenu, this.menu});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 0.5, color: AppColors.dividerBg))),
        child: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Visibility(
                  visible: isBack ?? false,
                  child: BackButton(),
                )),
            Align(
                child: Container(
                    child: Text(title, style: AppStyles.titleTextStyle))),
            Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                    onTap: onMenu,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
                      child: Text(menu ?? "", style: AppStyles.titleTextStyle),
                    ))),
          ],
        ));
  }
}

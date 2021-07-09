import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_plus/widgets/app_topbar.dart';
import 'package:flutter_plus/widgets/my_appbar.dart';

import 'components/user_item_widget.dart';
const List<ListUser> userList = [
  ListUser(
    avatar: 'https://img2.woyaogexing.com/2020/02/07/bc5c623d1e0648c1b300f702fd944c86!400x400.jpeg',
    name: '木木哒',
    count: 9,
    time: '20s',
    content: '╬═☆丕傠ぬ丕迎匼，丕夠傠囍狚炔洎怞ルo~~~~',
  ),
  ListUser(
    avatar: 'https://img2.woyaogexing.com/2020/02/14/79c9df02200f49caabaad1f4e8caedcb!400x400.jpeg',
    name: '木头',
    count: 4,
    time: '21:18',
    content: '~~~~',
  ),
];
class MessagePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        child: CustomBar(title: '消息中心'),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 15,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Container(
              height: 94,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/message/message.png'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '消息通知',
                        style:
                            TextStyle(color: Color(0xff666666), fontSize: 14),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/message/@me.png'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '@我',
                        style:
                            TextStyle(color: Color(0xff666666), fontSize: 14),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/message/loveme.png'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '收到的赞',
                        style:
                            TextStyle(color: Color(0xff666666), fontSize: 14),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                            'assets/images/message/system_message.png'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '系统通知',
                        style:
                            TextStyle(color: Color(0xff666666), fontSize: 14),
                      )
                    ],
                  ),
                ],
              )),
          Container(
            height: 10,
            decoration: BoxDecoration(
              color: Color(0xFFF4F4F4),
            ),
          ),
          Container(
            child: ListView.builder(
                itemCount: userList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return UserItemWidget(
                    data: userList[index],
                    onTap: () {
                      print('111');
                    },
                  );
                }),
          ),
        ],
      )),
    );
  }
}

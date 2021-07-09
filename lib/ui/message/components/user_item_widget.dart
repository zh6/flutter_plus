import 'package:flutter/material.dart';
import 'package:flutter_plus/ui/message/components/avatar_widget.dart';

class ListUser {
  final String avatar;
  final String name;
  final String time;
  final String content;
  final int count;

  const ListUser(
      {required this.avatar,
      required this.name,
      required this.time,
      required this.count,
      required this.content});
}

class UserItemWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final ListUser data;

  const UserItemWidget({Key? key, required this.onTap, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 62,
        padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
        child: Row(
          children: <Widget>[
            AvatarWidget(data.avatar, width: 40, height: 40),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    data.name,
                    style: TextStyle(fontSize: 16, color: Color(0xFFff7faa)),
                  ),
                  Container(
                    child: Text(
                      data.content,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14, color: Color(0xFF666666)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    data.time,
                    style: TextStyle(fontSize: 12, color: Color(0xFF999999)),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFff7faa)),
                    child: Text(
                      data.count.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

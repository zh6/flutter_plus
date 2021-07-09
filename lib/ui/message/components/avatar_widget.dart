import 'package:flutter/material.dart';
import 'package:flutter_plus/widgets/cache_image.dart';

class AvatarWidget extends StatelessWidget {
  final String url;
  final double width;
  final double height;

  const AvatarWidget(this.url,
      {Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CacheImage(
        url: url,
        width: width,
        height: height,
      ),
    );
  }
}

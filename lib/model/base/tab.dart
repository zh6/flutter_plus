import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'tab.freezed.dart';

@freezed
class TabEntity with _$TabEntity {
  const factory TabEntity(
    Widget widget,
    String title,
    IconData icon,
  ) = _TabEntity;
}

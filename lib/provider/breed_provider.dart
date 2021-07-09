import 'dart:core';
import 'package:flutter_plus/model/breed/breed.dart';
import 'package:flutter_plus/net/api_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final breedProvider =
    StateNotifierProvider.autoDispose<BreedNotifier, List<BreedEntity>>((ref) {
  return BreedNotifier(ref.read);
});
List<BreedEntity> list = [];

class BreedNotifier extends StateNotifier<List<BreedEntity>> {
  final Reader read;

  BreedNotifier(this.read) : super(list) {
    initData();
  }

  void initData() async {
    final response = await ApiClient().getbreed();
    if (response.data['state'] == 0) {
      response.data['aaData']?.forEach((c) async {
        list.add(BreedEntity.fromJson(c));
      });
    }
    state=list;
  }
}

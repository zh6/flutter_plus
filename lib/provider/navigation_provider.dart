import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigationProvider =
    StateNotifierProvider<navigationNotifier, int>((ref) {
  return navigationNotifier();
});

class navigationNotifier extends StateNotifier<int> {
  navigationNotifier() : super(0);

  void selectPage(int i) {
    state = i;
  }
}

import 'dart:core';

import 'package:flutter_plus/model/moment/moment.dart';
import 'package:flutter_plus/model/moment/moment_response.dart';
import 'package:flutter_plus/net/api_client.dart';
import 'package:flutter_plus/net/base_dio.dart';
import 'package:flutter_plus/net/base_error.dart';
import 'package:flutter_plus/widgets/page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

final momentProvider =
    StateNotifierProvider<MomentNotifier, MomentState>((ref) {
  return MomentNotifier();
});

class MomentState {
  final List<MomentEntity> list;
  final int pageIndex;
  final PageState pageState;
  final BaseError? error;

  MomentState(
      {required this.list,
      required this.pageIndex,
      required this.pageState,
      this.error});

  MomentState.initial()
      : list = [],
        pageIndex = 1,
        pageState = PageState.idle,
        error = null;

  MomentState copyWith(
      {List<MomentEntity>? list,
      int? pageIndex,
      PageState? pageState,
      BaseError? error}) {
    return MomentState(
      list: list ?? this.list,
      pageIndex: pageIndex ?? this.pageIndex,
      pageState: pageState ?? this.pageState,
      error: error ?? this.error,
    );
  }
}

class MomentNotifier extends StateNotifier<MomentState> {
  final RefreshController refreshController =
      RefreshController(initialRefresh: false);

  MomentNotifier() : super(MomentState.initial()) {
    initData();
  }

  Future<void> initData({bool isRefresh = false}) async {
    if (state.pageState == PageState.idle) {
      state = state.copyWith(pageState: PageState.busy);
    }
    try {
      if (isRefresh) {
        MomentResponse result = await ApiClient().getmoment();
        if (result.state == 0) {
          state = state.copyWith(
            list: [...result.aaData!],
            pageState: PageState.success,
            pageIndex: 2,
          );
          refreshController.refreshCompleted();
          refreshController.footerMode.value = LoadStatus.canLoading;
        }
      } else {
        MomentResponse result = await ApiClient().getmoment();
        if (result.aaData!.isEmpty && state.pageIndex == 1) {
          state = state.copyWith(pageState: PageState.empty);
        } else {
          state = state.copyWith(
              list: [...state.list, ...result.aaData!],
              pageIndex: state.pageIndex + 1,
              pageState: PageState.success);
          refreshController.loadComplete();
          if (result.aaData!.isEmpty || result.aaData!.length < 10) {
            refreshController.loadNoData();
          }
        }
      }
    } catch (e) {
      state = state.copyWith(pageState: PageState.error, error: BaseDio.getInstance().getDioError(e));
      refreshController.refreshFailed();
      refreshController.loadFailed();
    }
  }
}

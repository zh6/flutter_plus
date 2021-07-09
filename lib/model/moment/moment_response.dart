import 'package:freezed_annotation/freezed_annotation.dart';

import 'moment.dart';

part 'moment_response.freezed.dart';

part 'moment_response.g.dart';

@freezed
class MomentResponse with _$MomentResponse {
  const factory MomentResponse(int state, String msg,
      {List<MomentEntity>? aaData}) = _MomentResponse;

  factory MomentResponse.fromJson(Map<String, dynamic> json) =>
      _$MomentResponseFromJson(json);
}

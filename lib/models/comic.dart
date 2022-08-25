import 'package:comic_log_app/widgets/state_tag.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comic with _$Comic {
  factory Comic({
    required String cid,
    required String title,
    required List<String> author,
    required String imgUrl,
    required String publisher,
    required String magazine,
    required int startYear,
    required int endYear,
    required int rating,
    required SerializeState serializeState,
  }) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
}

enum SerializeState { serialize, hiatus, finished }

extension SerializeStateEx on SerializeState {
  Widget get stateTag {
    switch (this) {
      case SerializeState.serialize:
        return const StateTag(stateText: '連載中', color: Colors.deepPurple);
      case SerializeState.hiatus:
        return const StateTag(stateText: '休載中', color: Colors.green);
      case SerializeState.finished:
        return const StateTag(stateText: '連載終了', color: Colors.deepOrange);
    }
  }
}

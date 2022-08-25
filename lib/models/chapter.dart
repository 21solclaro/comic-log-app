import 'package:comic_log_app/widgets/state_tag.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class Chapter with _$Chapter {
  factory Chapter({
    required int volume,
    required String chapterTitle,
    required ChapterReadState chapterReadState,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}

enum ChapterReadState { unread, finished }

extension ChapterReadStateEx on ChapterReadState {
  Widget get stateTag {
    switch (this) {
      case ChapterReadState.unread:
        return const StateTag(stateText: '未読', color: Colors.deepPurple);
      case ChapterReadState.finished:
        return const StateTag(stateText: '読了', color: Colors.deepOrange);
    }
  }
}

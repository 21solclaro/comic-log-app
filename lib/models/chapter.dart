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
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: const Text(
            '未読',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        );
      case ChapterReadState.finished:
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: const Text(
            '読了',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        );
    }
  }
}

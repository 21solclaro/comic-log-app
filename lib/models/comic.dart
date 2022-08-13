import 'package:comic_log_app/models/book.dart';
import 'package:comic_log_app/models/chapter.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comic with _$Comic {
  factory Comic(
      {required String title,
      required List author,
      required String imgUrl,
      required String publisher,
      required String magazine,
      required int startYear,
      required int endYear,
      required int rating,
      required List<Book> books,
      required List<Chapter> chapters,
      required SerializeState serializeState}) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
}

enum SerializeState { serialize, hiatus, finished }

extension SerializeStateEx on SerializeState {
  Widget get stateTag {
    switch (this) {
      case SerializeState.serialize:
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
            '連載中',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        );
      case SerializeState.hiatus:
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
            '休載中',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        );
      case SerializeState.finished:
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
            '連載終了',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        );
    }
  }
}

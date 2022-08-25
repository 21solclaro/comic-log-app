import 'package:comic_log_app/models/date_time_converter.dart';
import 'package:comic_log_app/widgets/state_tag.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  factory Book({
    required int volume,
    required String imgUrl,
    @DateTimeTimestampConverter() required DateTime publishedAt,
    required BookReadState bookReadState,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

enum BookReadState { read, unread, finished }

extension BookReadStateEx on BookReadState {
  Widget get stateTag {
    switch (this) {
      case BookReadState.unread:
        return const StateTag(stateText: '未読', color: Colors.deepPurple);
      case BookReadState.read:
        return const StateTag(stateText: '読書中', color: Colors.green);
      case BookReadState.finished:
        return const StateTag(stateText: '読了', color: Colors.deepOrange);
    }
  }
}

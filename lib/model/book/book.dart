// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../component/state_tag.dart';
import '../../core/date_time_converter.dart';

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

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  factory Book({
    required int volume,
    required String imgUrl,
    required DateTime publishedAt,
    required BookReadState bookReadState,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

enum BookReadState { read, unread, finished }

extension BookReadStateEx on BookReadState {
  Widget get stateTag {
    switch (this) {
      case BookReadState.read:
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: const Text(
            '読書中',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        );
      case BookReadState.unread:
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
      case BookReadState.finished:
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

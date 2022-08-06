import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comic with _$Comic {
  factory Comic({
    required String title,
    required List author,
    required String imgUrl,
    required String publisher,
    required String magazine,
    required int startYear,
    required List books,
    required List chapters,
  }) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
}

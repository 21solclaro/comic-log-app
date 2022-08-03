import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comic with _$Comic {
  factory Comic({
    required String title,
    required String author,
    required String imgUrl,
    required int startYear,
  }) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comic _$$_ComicFromJson(Map<String, dynamic> json) => _$_Comic(
      title: json['title'] as String,
      author: json['author'] as List<dynamic>,
      imgUrl: json['imgUrl'] as String,
      publisher: json['publisher'] as String,
      magazine: json['magazine'] as String,
      startYear: json['startYear'] as int,
      books: (json['books'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
      serializeState:
          $enumDecode(_$SerializeStateEnumMap, json['serializeState']),
    );

Map<String, dynamic> _$$_ComicToJson(_$_Comic instance) => <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'imgUrl': instance.imgUrl,
      'publisher': instance.publisher,
      'magazine': instance.magazine,
      'startYear': instance.startYear,
      'books': instance.books,
      'chapters': instance.chapters,
      'serializeState': _$SerializeStateEnumMap[instance.serializeState]!,
    };

const _$SerializeStateEnumMap = {
  SerializeState.serialize: 'serialize',
  SerializeState.hiatus: 'hiatus',
  SerializeState.finished: 'finished',
};

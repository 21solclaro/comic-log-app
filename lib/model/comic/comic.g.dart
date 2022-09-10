// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comic _$$_ComicFromJson(Map<String, dynamic> json) => _$_Comic(
      cid: json['cid'] as String,
      title: json['title'] as String,
      author:
          (json['author'] as List<dynamic>).map((e) => e as String).toList(),
      imgUrl: json['imgUrl'] as String,
      publisher: json['publisher'] as String,
      magazine: json['magazine'] as String,
      startYear: json['startYear'] as int,
      endYear: json['endYear'] as int,
      rating: json['rating'] as int,
      serializeState:
          $enumDecode(_$SerializeStateEnumMap, json['serializeState']),
    );

Map<String, dynamic> _$$_ComicToJson(_$_Comic instance) => <String, dynamic>{
      'cid': instance.cid,
      'title': instance.title,
      'author': instance.author,
      'imgUrl': instance.imgUrl,
      'publisher': instance.publisher,
      'magazine': instance.magazine,
      'startYear': instance.startYear,
      'endYear': instance.endYear,
      'rating': instance.rating,
      'serializeState': _$SerializeStateEnumMap[instance.serializeState]!,
    };

const _$SerializeStateEnumMap = {
  SerializeState.serialize: 'serialize',
  SerializeState.hiatus: 'hiatus',
  SerializeState.finished: 'finished',
};

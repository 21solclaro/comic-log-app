// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comic _$$_ComicFromJson(Map<String, dynamic> json) => _$_Comic(
      title: json['title'] as String,
      author: json['author'] as String,
      imgUrl: json['imgUrl'] as String,
      startYear: json['startYear'] as int,
    );

Map<String, dynamic> _$$_ComicToJson(_$_Comic instance) => <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'imgUrl': instance.imgUrl,
      'startYear': instance.startYear,
    };

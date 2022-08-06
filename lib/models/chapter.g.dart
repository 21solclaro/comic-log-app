// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chapter _$$_ChapterFromJson(Map<String, dynamic> json) => _$_Chapter(
      volume: json['volume'] as int,
      chapterTitle: json['chapterTitle'] as String,
      isRead: json['isRead'] as bool,
    );

Map<String, dynamic> _$$_ChapterToJson(_$_Chapter instance) =>
    <String, dynamic>{
      'volume': instance.volume,
      'chapterTitle': instance.chapterTitle,
      'isRead': instance.isRead,
    };

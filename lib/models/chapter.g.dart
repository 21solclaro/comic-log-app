// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chapter _$$_ChapterFromJson(Map<String, dynamic> json) => _$_Chapter(
      volume: json['volume'] as int,
      chapterTitle: json['chapterTitle'] as String,
      chapterReadState:
          $enumDecode(_$ChapterReadStateEnumMap, json['chapterReadState']),
    );

Map<String, dynamic> _$$_ChapterToJson(_$_Chapter instance) =>
    <String, dynamic>{
      'volume': instance.volume,
      'chapterTitle': instance.chapterTitle,
      'chapterReadState': _$ChapterReadStateEnumMap[instance.chapterReadState]!,
    };

const _$ChapterReadStateEnumMap = {
  ChapterReadState.read: 'read',
  ChapterReadState.unread: 'unread',
  ChapterReadState.finished: 'finished',
};

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  int get volume => throw _privateConstructorUsedError;
  String get chapterTitle => throw _privateConstructorUsedError;
  ChapterReadState get chapterReadState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res>;
  $Res call(
      {int volume, String chapterTitle, ChapterReadState chapterReadState});
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res> implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  final Chapter _value;
  // ignore: unused_field
  final $Res Function(Chapter) _then;

  @override
  $Res call({
    Object? volume = freezed,
    Object? chapterTitle = freezed,
    Object? chapterReadState = freezed,
  }) {
    return _then(_value.copyWith(
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      chapterTitle: chapterTitle == freezed
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String,
      chapterReadState: chapterReadState == freezed
          ? _value.chapterReadState
          : chapterReadState // ignore: cast_nullable_to_non_nullable
              as ChapterReadState,
    ));
  }
}

/// @nodoc
abstract class _$$_ChapterCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$_ChapterCopyWith(
          _$_Chapter value, $Res Function(_$_Chapter) then) =
      __$$_ChapterCopyWithImpl<$Res>;
  @override
  $Res call(
      {int volume, String chapterTitle, ChapterReadState chapterReadState});
}

/// @nodoc
class __$$_ChapterCopyWithImpl<$Res> extends _$ChapterCopyWithImpl<$Res>
    implements _$$_ChapterCopyWith<$Res> {
  __$$_ChapterCopyWithImpl(_$_Chapter _value, $Res Function(_$_Chapter) _then)
      : super(_value, (v) => _then(v as _$_Chapter));

  @override
  _$_Chapter get _value => super._value as _$_Chapter;

  @override
  $Res call({
    Object? volume = freezed,
    Object? chapterTitle = freezed,
    Object? chapterReadState = freezed,
  }) {
    return _then(_$_Chapter(
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      chapterTitle: chapterTitle == freezed
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String,
      chapterReadState: chapterReadState == freezed
          ? _value.chapterReadState
          : chapterReadState // ignore: cast_nullable_to_non_nullable
              as ChapterReadState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chapter implements _Chapter {
  _$_Chapter(
      {required this.volume,
      required this.chapterTitle,
      required this.chapterReadState});

  factory _$_Chapter.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterFromJson(json);

  @override
  final int volume;
  @override
  final String chapterTitle;
  @override
  final ChapterReadState chapterReadState;

  @override
  String toString() {
    return 'Chapter(volume: $volume, chapterTitle: $chapterTitle, chapterReadState: $chapterReadState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chapter &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality()
                .equals(other.chapterTitle, chapterTitle) &&
            const DeepCollectionEquality()
                .equals(other.chapterReadState, chapterReadState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(chapterTitle),
      const DeepCollectionEquality().hash(chapterReadState));

  @JsonKey(ignore: true)
  @override
  _$$_ChapterCopyWith<_$_Chapter> get copyWith =>
      __$$_ChapterCopyWithImpl<_$_Chapter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterToJson(
      this,
    );
  }
}

abstract class _Chapter implements Chapter {
  factory _Chapter(
      {required final int volume,
      required final String chapterTitle,
      required final ChapterReadState chapterReadState}) = _$_Chapter;

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$_Chapter.fromJson;

  @override
  int get volume;
  @override
  String get chapterTitle;
  @override
  ChapterReadState get chapterReadState;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterCopyWith<_$_Chapter> get copyWith =>
      throw _privateConstructorUsedError;
}

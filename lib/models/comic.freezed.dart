// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comic _$ComicFromJson(Map<String, dynamic> json) {
  return _Comic.fromJson(json);
}

/// @nodoc
mixin _$Comic {
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  int get startYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicCopyWith<Comic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicCopyWith<$Res> {
  factory $ComicCopyWith(Comic value, $Res Function(Comic) then) =
      _$ComicCopyWithImpl<$Res>;
  $Res call({String title, String author, String imgUrl, int startYear});
}

/// @nodoc
class _$ComicCopyWithImpl<$Res> implements $ComicCopyWith<$Res> {
  _$ComicCopyWithImpl(this._value, this._then);

  final Comic _value;
  // ignore: unused_field
  final $Res Function(Comic) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? imgUrl = freezed,
    Object? startYear = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ComicCopyWith<$Res> implements $ComicCopyWith<$Res> {
  factory _$$_ComicCopyWith(_$_Comic value, $Res Function(_$_Comic) then) =
      __$$_ComicCopyWithImpl<$Res>;
  @override
  $Res call({String title, String author, String imgUrl, int startYear});
}

/// @nodoc
class __$$_ComicCopyWithImpl<$Res> extends _$ComicCopyWithImpl<$Res>
    implements _$$_ComicCopyWith<$Res> {
  __$$_ComicCopyWithImpl(_$_Comic _value, $Res Function(_$_Comic) _then)
      : super(_value, (v) => _then(v as _$_Comic));

  @override
  _$_Comic get _value => super._value as _$_Comic;

  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? imgUrl = freezed,
    Object? startYear = freezed,
  }) {
    return _then(_$_Comic(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comic implements _Comic {
  _$_Comic(
      {required this.title,
      required this.author,
      required this.imgUrl,
      required this.startYear});

  factory _$_Comic.fromJson(Map<String, dynamic> json) =>
      _$$_ComicFromJson(json);

  @override
  final String title;
  @override
  final String author;
  @override
  final String imgUrl;
  @override
  final int startYear;

  @override
  String toString() {
    return 'Comic(title: $title, author: $author, imgUrl: $imgUrl, startYear: $startYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comic &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.imgUrl, imgUrl) &&
            const DeepCollectionEquality().equals(other.startYear, startYear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(imgUrl),
      const DeepCollectionEquality().hash(startYear));

  @JsonKey(ignore: true)
  @override
  _$$_ComicCopyWith<_$_Comic> get copyWith =>
      __$$_ComicCopyWithImpl<_$_Comic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicToJson(
      this,
    );
  }
}

abstract class _Comic implements Comic {
  factory _Comic(
      {required final String title,
      required final String author,
      required final String imgUrl,
      required final int startYear}) = _$_Comic;

  factory _Comic.fromJson(Map<String, dynamic> json) = _$_Comic.fromJson;

  @override
  String get title;
  @override
  String get author;
  @override
  String get imgUrl;
  @override
  int get startYear;
  @override
  @JsonKey(ignore: true)
  _$$_ComicCopyWith<_$_Comic> get copyWith =>
      throw _privateConstructorUsedError;
}

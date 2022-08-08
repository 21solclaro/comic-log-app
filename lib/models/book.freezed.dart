// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  int get volume => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  BookReadState get bookReadState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {int volume,
      String imgUrl,
      DateTime publishedAt,
      BookReadState bookReadState});
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object? volume = freezed,
    Object? imgUrl = freezed,
    Object? publishedAt = freezed,
    Object? bookReadState = freezed,
  }) {
    return _then(_value.copyWith(
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookReadState: bookReadState == freezed
          ? _value.bookReadState
          : bookReadState // ignore: cast_nullable_to_non_nullable
              as BookReadState,
    ));
  }
}

/// @nodoc
abstract class _$$_BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$_BookCopyWith(_$_Book value, $Res Function(_$_Book) then) =
      __$$_BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {int volume,
      String imgUrl,
      DateTime publishedAt,
      BookReadState bookReadState});
}

/// @nodoc
class __$$_BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$$_BookCopyWith<$Res> {
  __$$_BookCopyWithImpl(_$_Book _value, $Res Function(_$_Book) _then)
      : super(_value, (v) => _then(v as _$_Book));

  @override
  _$_Book get _value => super._value as _$_Book;

  @override
  $Res call({
    Object? volume = freezed,
    Object? imgUrl = freezed,
    Object? publishedAt = freezed,
    Object? bookReadState = freezed,
  }) {
    return _then(_$_Book(
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookReadState: bookReadState == freezed
          ? _value.bookReadState
          : bookReadState // ignore: cast_nullable_to_non_nullable
              as BookReadState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book implements _Book {
  _$_Book(
      {required this.volume,
      required this.imgUrl,
      required this.publishedAt,
      required this.bookReadState});

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

  @override
  final int volume;
  @override
  final String imgUrl;
  @override
  final DateTime publishedAt;
  @override
  final BookReadState bookReadState;

  @override
  String toString() {
    return 'Book(volume: $volume, imgUrl: $imgUrl, publishedAt: $publishedAt, bookReadState: $bookReadState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Book &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality().equals(other.imgUrl, imgUrl) &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality()
                .equals(other.bookReadState, bookReadState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(imgUrl),
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(bookReadState));

  @JsonKey(ignore: true)
  @override
  _$$_BookCopyWith<_$_Book> get copyWith =>
      __$$_BookCopyWithImpl<_$_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  factory _Book(
      {required final int volume,
      required final String imgUrl,
      required final DateTime publishedAt,
      required final BookReadState bookReadState}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  int get volume;
  @override
  String get imgUrl;
  @override
  DateTime get publishedAt;
  @override
  BookReadState get bookReadState;
  @override
  @JsonKey(ignore: true)
  _$$_BookCopyWith<_$_Book> get copyWith => throw _privateConstructorUsedError;
}

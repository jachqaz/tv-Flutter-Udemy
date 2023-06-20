// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(readValue: readTitleValue)
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title', readValue: readOriginalTitleValue)
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(readValue: readTitleValue) String title,
      String overview,
      @JsonKey(name: 'original_title', readValue: readOriginalTitleValue)
      String originalTitle,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'media_type') String type,
      @JsonKey(name: 'vote_average') double voteAverage});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? originalTitle = null,
    Object? posterPath = null,
    Object? backdropPath = null,
    Object? type = null,
    Object? voteAverage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$_MediaCopyWith(_$_Media value, $Res Function(_$_Media) then) =
      __$$_MediaCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(readValue: readTitleValue) String title,
      String overview,
      @JsonKey(name: 'original_title', readValue: readOriginalTitleValue)
      String originalTitle,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'media_type') String type,
      @JsonKey(name: 'vote_average') double voteAverage});
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$_Media>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? originalTitle = null,
    Object? posterPath = null,
    Object? backdropPath = null,
    Object? type = null,
    Object? voteAverage = null,
  }) {
    return _then(_$_Media(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media implements _Media {
  _$_Media(
      {required this.id,
      @JsonKey(readValue: readTitleValue) required this.title,
      required this.overview,
      @JsonKey(name: 'original_title', readValue: readOriginalTitleValue)
      required this.originalTitle,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'media_type') required this.type,
      @JsonKey(name: 'vote_average') required this.voteAverage});

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(readValue: readTitleValue)
  final String title;
  @override
  final String overview;
  @override
  @JsonKey(name: 'original_title', readValue: readOriginalTitleValue)
  final String originalTitle;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  @JsonKey(name: 'media_type')
  final String type;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @override
  String toString() {
    return 'Media(id: $id, title: $title, overview: $overview, originalTitle: $originalTitle, posterPath: $posterPath, backdropPath: $backdropPath, type: $type, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Media &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, overview,
      originalTitle, posterPath, backdropPath, type, voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      __$$_MediaCopyWithImpl<_$_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  factory _Media(
          {required final int id,
          @JsonKey(readValue: readTitleValue) required final String title,
          required final String overview,
          @JsonKey(name: 'original_title', readValue: readOriginalTitleValue)
          required final String originalTitle,
          @JsonKey(name: 'poster_path') required final String posterPath,
          @JsonKey(name: 'backdrop_path') required final String backdropPath,
          @JsonKey(name: 'media_type') required final String type,
          @JsonKey(name: 'vote_average') required final double voteAverage}) =
      _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  int get id;
  @override
  @JsonKey(readValue: readTitleValue)
  String get title;
  @override
  String get overview;
  @override
  @JsonKey(name: 'original_title', readValue: readOriginalTitleValue)
  String get originalTitle;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(name: 'media_type')
  String get type;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      throw _privateConstructorUsedError;
}

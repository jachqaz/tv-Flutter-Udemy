// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;

  List<Genre> get genres => throw _privateConstructorUsedError;

  String get overview => throw _privateConstructorUsedError;

  int get runtime => throw _privateConstructorUsedError;

  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;

  @JsonKey(name: "release_date")
  DateTime get releaseDate => throw _privateConstructorUsedError;

  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;

  @JsonKey(readValue: readTitleValue)
  String get title => throw _privateConstructorUsedError;

  @JsonKey(readValue: readOriginalTitleValue)
  String get originalTitle => throw _privateConstructorUsedError;

  @JsonKey(name: "backdrop_path")
  String get backdropPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;

  @useResult
  $Res call(
      {int id,
      List<Genre> genres,
      String overview,
      int runtime,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") DateTime releaseDate,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(readValue: readTitleValue) String title,
      @JsonKey(readValue: readOriginalTitleValue) String originalTitle,
      @JsonKey(name: "backdrop_path") String backdropPath});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genres = null,
    Object? overview = null,
    Object? runtime = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? backdropPath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {int id,
      List<Genre> genres,
      String overview,
      int runtime,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") DateTime releaseDate,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(readValue: readTitleValue) String title,
      @JsonKey(readValue: readOriginalTitleValue) String originalTitle,
      @JsonKey(name: "backdrop_path") String backdropPath});
}

/// @nodoc
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res, _$_Movie>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genres = null,
    Object? overview = null,
    Object? runtime = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? backdropPath = null,
  }) {
    return _then(_$_Movie(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie implements _Movie {
  _$_Movie(
      {required this.id,
      required final List<Genre> genres,
      required this.overview,
      required this.runtime,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "release_date") required this.releaseDate,
      @JsonKey(name: "vote_average") required this.voteAverage,
      @JsonKey(readValue: readTitleValue) required this.title,
      @JsonKey(readValue: readOriginalTitleValue) required this.originalTitle,
      @JsonKey(name: "backdrop_path") required this.backdropPath})
      : _genres = genres;

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final int id;
  final List<Genre> _genres;

  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String overview;
  @override
  final int runtime;
  @override
  @JsonKey(name: "poster_path")
  final String posterPath;
  @override
  @JsonKey(name: "release_date")
  final DateTime releaseDate;
  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @override
  @JsonKey(readValue: readTitleValue)
  final String title;
  @override
  @JsonKey(readValue: readOriginalTitleValue)
  final String originalTitle;
  @override
  @JsonKey(name: "backdrop_path")
  final String backdropPath;

  @override
  String toString() {
    return 'Movie(id: $id, genres: $genres, overview: $overview, runtime: $runtime, posterPath: $posterPath, releaseDate: $releaseDate, voteAverage: $voteAverage, title: $title, originalTitle: $originalTitle, backdropPath: $backdropPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Movie &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_genres),
      overview,
      runtime,
      posterPath,
      releaseDate,
      voteAverage,
      title,
      originalTitle,
      backdropPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(
      this,
    );
  }
}

abstract class _Movie implements Movie {
  factory _Movie(
          {required final int id,
          required final List<Genre> genres,
          required final String overview,
          required final int runtime,
          @JsonKey(name: "poster_path") required final String posterPath,
          @JsonKey(name: "release_date") required final DateTime releaseDate,
          @JsonKey(name: "vote_average") required final double voteAverage,
          @JsonKey(readValue: readTitleValue) required final String title,
          @JsonKey(readValue: readOriginalTitleValue)
          required final String originalTitle,
          @JsonKey(name: "backdrop_path") required final String backdropPath}) =
      _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int get id;

  @override
  List<Genre> get genres;

  @override
  String get overview;

  @override
  int get runtime;

  @override
  @JsonKey(name: "poster_path")
  String get posterPath;

  @override
  @JsonKey(name: "release_date")
  DateTime get releaseDate;

  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;

  @override
  @JsonKey(readValue: readTitleValue)
  String get title;

  @override
  @JsonKey(readValue: readOriginalTitleValue)
  String get originalTitle;

  @override
  @JsonKey(name: "backdrop_path")
  String get backdropPath;

  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}

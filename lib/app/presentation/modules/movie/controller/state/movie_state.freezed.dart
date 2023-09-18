// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(Movie movie) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(Movie movie)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(Movie movie)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateFailed value) failed,
    required TResult Function(MovieStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieStateLoading value)? loading,
    TResult? Function(MovieStateFailed value)? failed,
    TResult? Function(MovieStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateFailed value)? failed,
    TResult Function(MovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovieStateLoadingCopyWith<$Res> {
  factory _$$MovieStateLoadingCopyWith(
          _$MovieStateLoading value, $Res Function(_$MovieStateLoading) then) =
      __$$MovieStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieStateLoadingCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateLoading>
    implements _$$MovieStateLoadingCopyWith<$Res> {
  __$$MovieStateLoadingCopyWithImpl(
      _$MovieStateLoading _value, $Res Function(_$MovieStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieStateLoading implements MovieStateLoading {
  _$MovieStateLoading();

  @override
  String toString() {
    return 'MovieState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(Movie movie) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(Movie movie)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(Movie movie)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateFailed value) failed,
    required TResult Function(MovieStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieStateLoading value)? loading,
    TResult? Function(MovieStateFailed value)? failed,
    TResult? Function(MovieStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateFailed value)? failed,
    TResult Function(MovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieStateLoading implements MovieState {
  factory MovieStateLoading() = _$MovieStateLoading;
}

/// @nodoc
abstract class _$$MovieStateFailedCopyWith<$Res> {
  factory _$$MovieStateFailedCopyWith(
          _$MovieStateFailed value, $Res Function(_$MovieStateFailed) then) =
      __$$MovieStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieStateFailedCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateFailed>
    implements _$$MovieStateFailedCopyWith<$Res> {
  __$$MovieStateFailedCopyWithImpl(
      _$MovieStateFailed _value, $Res Function(_$MovieStateFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieStateFailed implements MovieStateFailed {
  _$MovieStateFailed();

  @override
  String toString() {
    return 'MovieState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(Movie movie) loaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(Movie movie)? loaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(Movie movie)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateFailed value) failed,
    required TResult Function(MovieStateLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieStateLoading value)? loading,
    TResult? Function(MovieStateFailed value)? failed,
    TResult? Function(MovieStateLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateFailed value)? failed,
    TResult Function(MovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class MovieStateFailed implements MovieState {
  factory MovieStateFailed() = _$MovieStateFailed;
}

/// @nodoc
abstract class _$$MovieStateLoadedCopyWith<$Res> {
  factory _$$MovieStateLoadedCopyWith(
          _$MovieStateLoaded value, $Res Function(_$MovieStateLoaded) then) =
      __$$MovieStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$MovieStateLoadedCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateLoaded>
    implements _$$MovieStateLoadedCopyWith<$Res> {
  __$$MovieStateLoadedCopyWithImpl(
      _$MovieStateLoaded _value, $Res Function(_$MovieStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$MovieStateLoaded(
      null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$MovieStateLoaded implements MovieStateLoaded {
  _$MovieStateLoaded(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieState.loaded(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieStateLoaded &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieStateLoadedCopyWith<_$MovieStateLoaded> get copyWith =>
      __$$MovieStateLoadedCopyWithImpl<_$MovieStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(Movie movie) loaded,
  }) {
    return loaded(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(Movie movie)? loaded,
  }) {
    return loaded?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(Movie movie)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateFailed value) failed,
    required TResult Function(MovieStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieStateLoading value)? loading,
    TResult? Function(MovieStateFailed value)? failed,
    TResult? Function(MovieStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateFailed value)? failed,
    TResult Function(MovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MovieStateLoaded implements MovieState {
  factory MovieStateLoaded(final Movie movie) = _$MovieStateLoaded;

  Movie get movie;
  @JsonKey(ignore: true)
  _$$MovieStateLoadedCopyWith<_$MovieStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

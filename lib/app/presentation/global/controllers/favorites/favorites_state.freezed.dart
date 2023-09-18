// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(Map<int, Media> movies, Map<int, Media> series)
        loaded,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(Map<int, Media> movies, Map<int, Media> series)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(Map<int, Media> movies, Map<int, Media> series)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateFailed value) failed,
    required TResult Function(FavoritesStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateFailed value)? failed,
    TResult? Function(FavoritesStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateFailed value)? failed,
    TResult Function(FavoritesStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoritesStateLoadingCopyWith<$Res> {
  factory _$$FavoritesStateLoadingCopyWith(_$FavoritesStateLoading value,
          $Res Function(_$FavoritesStateLoading) then) =
      __$$FavoritesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesStateLoadingCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateLoading>
    implements _$$FavoritesStateLoadingCopyWith<$Res> {
  __$$FavoritesStateLoadingCopyWithImpl(_$FavoritesStateLoading _value,
      $Res Function(_$FavoritesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesStateLoading implements FavoritesStateLoading {
  _$FavoritesStateLoading();

  @override
  String toString() {
    return 'FavoritesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(Map<int, Media> movies, Map<int, Media> series)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(Map<int, Media> movies, Map<int, Media> series)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(Map<int, Media> movies, Map<int, Media> series)? loaded,
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
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateFailed value) failed,
    required TResult Function(FavoritesStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateFailed value)? failed,
    TResult? Function(FavoritesStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateFailed value)? failed,
    TResult Function(FavoritesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateLoading implements FavoritesState {
  factory FavoritesStateLoading() = _$FavoritesStateLoading;
}

/// @nodoc
abstract class _$$FavoritesStateFailedCopyWith<$Res> {
  factory _$$FavoritesStateFailedCopyWith(_$FavoritesStateFailed value,
          $Res Function(_$FavoritesStateFailed) then) =
      __$$FavoritesStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesStateFailedCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateFailed>
    implements _$$FavoritesStateFailedCopyWith<$Res> {
  __$$FavoritesStateFailedCopyWithImpl(_$FavoritesStateFailed _value,
      $Res Function(_$FavoritesStateFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesStateFailed implements FavoritesStateFailed {
  _$FavoritesStateFailed();

  @override
  String toString() {
    return 'FavoritesState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(Map<int, Media> movies, Map<int, Media> series)
        loaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(Map<int, Media> movies, Map<int, Media> series)? loaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(Map<int, Media> movies, Map<int, Media> series)? loaded,
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
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateFailed value) failed,
    required TResult Function(FavoritesStateLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateFailed value)? failed,
    TResult? Function(FavoritesStateLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateFailed value)? failed,
    TResult Function(FavoritesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateFailed implements FavoritesState {
  factory FavoritesStateFailed() = _$FavoritesStateFailed;
}

/// @nodoc
abstract class _$$FavoritesStateLoadedCopyWith<$Res> {
  factory _$$FavoritesStateLoadedCopyWith(_$FavoritesStateLoaded value,
          $Res Function(_$FavoritesStateLoaded) then) =
      __$$FavoritesStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<int, Media> movies, Map<int, Media> series});
}

/// @nodoc
class __$$FavoritesStateLoadedCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateLoaded>
    implements _$$FavoritesStateLoadedCopyWith<$Res> {
  __$$FavoritesStateLoadedCopyWithImpl(_$FavoritesStateLoaded _value,
      $Res Function(_$FavoritesStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
    Object? series = null,
  }) {
    return _then(_$FavoritesStateLoaded(
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as Map<int, Media>,
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as Map<int, Media>,
    ));
  }
}

/// @nodoc

class _$FavoritesStateLoaded implements FavoritesStateLoaded {
  _$FavoritesStateLoaded(
      {required final Map<int, Media> movies,
      required final Map<int, Media> series})
      : _movies = movies,
        _series = series;

  final Map<int, Media> _movies;
  @override
  Map<int, Media> get movies {
    if (_movies is EqualUnmodifiableMapView) return _movies;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_movies);
  }

  final Map<int, Media> _series;
  @override
  Map<int, Media> get series {
    if (_series is EqualUnmodifiableMapView) return _series;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_series);
  }

  @override
  String toString() {
    return 'FavoritesState.loaded(movies: $movies, series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateLoaded &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_movies),
      const DeepCollectionEquality().hash(_series));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesStateLoadedCopyWith<_$FavoritesStateLoaded> get copyWith =>
      __$$FavoritesStateLoadedCopyWithImpl<_$FavoritesStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(Map<int, Media> movies, Map<int, Media> series)
        loaded,
  }) {
    return loaded(movies, series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(Map<int, Media> movies, Map<int, Media> series)? loaded,
  }) {
    return loaded?.call(movies, series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(Map<int, Media> movies, Map<int, Media> series)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movies, series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateFailed value) failed,
    required TResult Function(FavoritesStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateFailed value)? failed,
    TResult? Function(FavoritesStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateFailed value)? failed,
    TResult Function(FavoritesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateLoaded implements FavoritesState {
  factory FavoritesStateLoaded(
      {required final Map<int, Media> movies,
      required final Map<int, Media> series}) = _$FavoritesStateLoaded;

  Map<int, Media> get movies;
  Map<int, Media> get series;
  @JsonKey(ignore: true)
  _$$FavoritesStateLoadedCopyWith<_$FavoritesStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

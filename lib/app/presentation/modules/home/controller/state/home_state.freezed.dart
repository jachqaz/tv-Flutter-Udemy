// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  MoviesAndSeriesState get moviesAndSeries =>
      throw _privateConstructorUsedError;

  PerformersState get performers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;

  @useResult
  $Res call({MoviesAndSeriesState moviesAndSeries, PerformersState performers});

  $MoviesAndSeriesStateCopyWith<$Res> get moviesAndSeries;

  $PerformersStateCopyWith<$Res> get performers;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesAndSeries = null,
    Object? performers = null,
  }) {
    return _then(_value.copyWith(
      moviesAndSeries: null == moviesAndSeries
          ? _value.moviesAndSeries
          : moviesAndSeries // ignore: cast_nullable_to_non_nullable
              as MoviesAndSeriesState,
      performers: null == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as PerformersState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoviesAndSeriesStateCopyWith<$Res> get moviesAndSeries {
    return $MoviesAndSeriesStateCopyWith<$Res>(_value.moviesAndSeries, (value) {
      return _then(_value.copyWith(moviesAndSeries: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PerformersStateCopyWith<$Res> get performers {
    return $PerformersStateCopyWith<$Res>(_value.performers, (value) {
      return _then(_value.copyWith(performers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({MoviesAndSeriesState moviesAndSeries, PerformersState performers});

  @override
  $MoviesAndSeriesStateCopyWith<$Res> get moviesAndSeries;

  @override
  $PerformersStateCopyWith<$Res> get performers;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesAndSeries = null,
    Object? performers = null,
  }) {
    return _then(_$_HomeState(
      moviesAndSeries: null == moviesAndSeries
          ? _value.moviesAndSeries
          : moviesAndSeries // ignore: cast_nullable_to_non_nullable
              as MoviesAndSeriesState,
      performers: null == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as PerformersState,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {this.moviesAndSeries =
          const MoviesAndSeriesState.loading(TimeWindow.day),
      this.performers = const PerformersState.loading()});

  @override
  @JsonKey()
  final MoviesAndSeriesState moviesAndSeries;
  @override
  @JsonKey()
  final PerformersState performers;

  @override
  String toString() {
    return 'HomeState(moviesAndSeries: $moviesAndSeries, performers: $performers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.moviesAndSeries, moviesAndSeries) ||
                other.moviesAndSeries == moviesAndSeries) &&
            (identical(other.performers, performers) ||
                other.performers == performers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moviesAndSeries, performers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final MoviesAndSeriesState moviesAndSeries,
      final PerformersState performers}) = _$_HomeState;

  @override
  MoviesAndSeriesState get moviesAndSeries;

  @override
  PerformersState get performers;

  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoviesAndSeriesState {
  TimeWindow get timeWindow => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeWindow timeWindow) loading,
    required TResult Function(TimeWindow timeWindow) failed,
    required TResult Function(TimeWindow timeWindow, List<Media> list) loaded,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TimeWindow timeWindow)? loading,
    TResult? Function(TimeWindow timeWindow)? failed,
    TResult? Function(TimeWindow timeWindow, List<Media> list)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeWindow timeWindow)? loading,
    TResult Function(TimeWindow timeWindow)? failed,
    TResult Function(TimeWindow timeWindow, List<Media> list)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesAndSeriesStateLoading value) loading,
    required TResult Function(MoviesAndSeriesStateFailed value) failed,
    required TResult Function(MoviesAndSeriesStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesAndSeriesStateLoading value)? loading,
    TResult? Function(MoviesAndSeriesStateFailed value)? failed,
    TResult? Function(MoviesAndSeriesStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesAndSeriesStateLoading value)? loading,
    TResult Function(MoviesAndSeriesStateFailed value)? failed,
    TResult Function(MoviesAndSeriesStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesAndSeriesStateCopyWith<MoviesAndSeriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesAndSeriesStateCopyWith<$Res> {
  factory $MoviesAndSeriesStateCopyWith(MoviesAndSeriesState value,
          $Res Function(MoviesAndSeriesState) then) =
      _$MoviesAndSeriesStateCopyWithImpl<$Res, MoviesAndSeriesState>;
  @useResult
  $Res call({TimeWindow timeWindow});
}

/// @nodoc
class _$MoviesAndSeriesStateCopyWithImpl<$Res,
        $Val extends MoviesAndSeriesState>
    implements $MoviesAndSeriesStateCopyWith<$Res> {
  _$MoviesAndSeriesStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeWindow = null,
  }) {
    return _then(_value.copyWith(
      timeWindow: null == timeWindow
          ? _value.timeWindow
          : timeWindow // ignore: cast_nullable_to_non_nullable
              as TimeWindow,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesAndSeriesStateLoadingCopyWith<$Res>
    implements $MoviesAndSeriesStateCopyWith<$Res> {
  factory _$$MoviesAndSeriesStateLoadingCopyWith(
          _$MoviesAndSeriesStateLoading value,
          $Res Function(_$MoviesAndSeriesStateLoading) then) =
      __$$MoviesAndSeriesStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimeWindow timeWindow});
}

/// @nodoc
class __$$MoviesAndSeriesStateLoadingCopyWithImpl<$Res>
    extends _$MoviesAndSeriesStateCopyWithImpl<$Res,
        _$MoviesAndSeriesStateLoading>
    implements _$$MoviesAndSeriesStateLoadingCopyWith<$Res> {
  __$$MoviesAndSeriesStateLoadingCopyWithImpl(
      _$MoviesAndSeriesStateLoading _value,
      $Res Function(_$MoviesAndSeriesStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeWindow = null,
  }) {
    return _then(_$MoviesAndSeriesStateLoading(
      null == timeWindow
          ? _value.timeWindow
          : timeWindow // ignore: cast_nullable_to_non_nullable
              as TimeWindow,
    ));
  }
}

/// @nodoc

class _$MoviesAndSeriesStateLoading implements MoviesAndSeriesStateLoading {
  const _$MoviesAndSeriesStateLoading(this.timeWindow);

  @override
  final TimeWindow timeWindow;

  @override
  String toString() {
    return 'MoviesAndSeriesState.loading(timeWindow: $timeWindow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesAndSeriesStateLoading &&
            (identical(other.timeWindow, timeWindow) ||
                other.timeWindow == timeWindow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeWindow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesAndSeriesStateLoadingCopyWith<_$MoviesAndSeriesStateLoading>
      get copyWith => __$$MoviesAndSeriesStateLoadingCopyWithImpl<
          _$MoviesAndSeriesStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeWindow timeWindow) loading,
    required TResult Function(TimeWindow timeWindow) failed,
    required TResult Function(TimeWindow timeWindow, List<Media> list) loaded,
  }) {
    return loading(timeWindow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TimeWindow timeWindow)? loading,
    TResult? Function(TimeWindow timeWindow)? failed,
    TResult? Function(TimeWindow timeWindow, List<Media> list)? loaded,
  }) {
    return loading?.call(timeWindow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeWindow timeWindow)? loading,
    TResult Function(TimeWindow timeWindow)? failed,
    TResult Function(TimeWindow timeWindow, List<Media> list)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(timeWindow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesAndSeriesStateLoading value) loading,
    required TResult Function(MoviesAndSeriesStateFailed value) failed,
    required TResult Function(MoviesAndSeriesStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesAndSeriesStateLoading value)? loading,
    TResult? Function(MoviesAndSeriesStateFailed value)? failed,
    TResult? Function(MoviesAndSeriesStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesAndSeriesStateLoading value)? loading,
    TResult Function(MoviesAndSeriesStateFailed value)? failed,
    TResult Function(MoviesAndSeriesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MoviesAndSeriesStateLoading implements MoviesAndSeriesState {
  const factory MoviesAndSeriesStateLoading(final TimeWindow timeWindow) =
      _$MoviesAndSeriesStateLoading;

  @override
  TimeWindow get timeWindow;
  @override
  @JsonKey(ignore: true)
  _$$MoviesAndSeriesStateLoadingCopyWith<_$MoviesAndSeriesStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoviesAndSeriesStateFailedCopyWith<$Res>
    implements $MoviesAndSeriesStateCopyWith<$Res> {
  factory _$$MoviesAndSeriesStateFailedCopyWith(
          _$MoviesAndSeriesStateFailed value,
          $Res Function(_$MoviesAndSeriesStateFailed) then) =
      __$$MoviesAndSeriesStateFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimeWindow timeWindow});
}

/// @nodoc
class __$$MoviesAndSeriesStateFailedCopyWithImpl<$Res>
    extends _$MoviesAndSeriesStateCopyWithImpl<$Res,
        _$MoviesAndSeriesStateFailed>
    implements _$$MoviesAndSeriesStateFailedCopyWith<$Res> {
  __$$MoviesAndSeriesStateFailedCopyWithImpl(
      _$MoviesAndSeriesStateFailed _value,
      $Res Function(_$MoviesAndSeriesStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeWindow = null,
  }) {
    return _then(_$MoviesAndSeriesStateFailed(
      null == timeWindow
          ? _value.timeWindow
          : timeWindow // ignore: cast_nullable_to_non_nullable
              as TimeWindow,
    ));
  }
}

/// @nodoc

class _$MoviesAndSeriesStateFailed implements MoviesAndSeriesStateFailed {
  const _$MoviesAndSeriesStateFailed(this.timeWindow);

  @override
  final TimeWindow timeWindow;

  @override
  String toString() {
    return 'MoviesAndSeriesState.failed(timeWindow: $timeWindow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesAndSeriesStateFailed &&
            (identical(other.timeWindow, timeWindow) ||
                other.timeWindow == timeWindow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeWindow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesAndSeriesStateFailedCopyWith<_$MoviesAndSeriesStateFailed>
      get copyWith => __$$MoviesAndSeriesStateFailedCopyWithImpl<
          _$MoviesAndSeriesStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeWindow timeWindow) loading,
    required TResult Function(TimeWindow timeWindow) failed,
    required TResult Function(TimeWindow timeWindow, List<Media> list) loaded,
  }) {
    return failed(timeWindow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TimeWindow timeWindow)? loading,
    TResult? Function(TimeWindow timeWindow)? failed,
    TResult? Function(TimeWindow timeWindow, List<Media> list)? loaded,
  }) {
    return failed?.call(timeWindow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeWindow timeWindow)? loading,
    TResult Function(TimeWindow timeWindow)? failed,
    TResult Function(TimeWindow timeWindow, List<Media> list)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(timeWindow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesAndSeriesStateLoading value) loading,
    required TResult Function(MoviesAndSeriesStateFailed value) failed,
    required TResult Function(MoviesAndSeriesStateLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesAndSeriesStateLoading value)? loading,
    TResult? Function(MoviesAndSeriesStateFailed value)? failed,
    TResult? Function(MoviesAndSeriesStateLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesAndSeriesStateLoading value)? loading,
    TResult Function(MoviesAndSeriesStateFailed value)? failed,
    TResult Function(MoviesAndSeriesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class MoviesAndSeriesStateFailed implements MoviesAndSeriesState {
  const factory MoviesAndSeriesStateFailed(final TimeWindow timeWindow) =
      _$MoviesAndSeriesStateFailed;

  @override
  TimeWindow get timeWindow;
  @override
  @JsonKey(ignore: true)
  _$$MoviesAndSeriesStateFailedCopyWith<_$MoviesAndSeriesStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoviesAndSeriesStateLoadedCopyWith<$Res>
    implements $MoviesAndSeriesStateCopyWith<$Res> {
  factory _$$MoviesAndSeriesStateLoadedCopyWith(
          _$MoviesAndSeriesStateLoaded value,
          $Res Function(_$MoviesAndSeriesStateLoaded) then) =
      __$$MoviesAndSeriesStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimeWindow timeWindow, List<Media> list});
}

/// @nodoc
class __$$MoviesAndSeriesStateLoadedCopyWithImpl<$Res>
    extends _$MoviesAndSeriesStateCopyWithImpl<$Res,
        _$MoviesAndSeriesStateLoaded>
    implements _$$MoviesAndSeriesStateLoadedCopyWith<$Res> {
  __$$MoviesAndSeriesStateLoadedCopyWithImpl(
      _$MoviesAndSeriesStateLoaded _value,
      $Res Function(_$MoviesAndSeriesStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeWindow = null,
    Object? list = null,
  }) {
    return _then(_$MoviesAndSeriesStateLoaded(
      timeWindow: null == timeWindow
          ? _value.timeWindow
          : timeWindow // ignore: cast_nullable_to_non_nullable
              as TimeWindow,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc

class _$MoviesAndSeriesStateLoaded implements MoviesAndSeriesStateLoaded {
  const _$MoviesAndSeriesStateLoaded(
      {required this.timeWindow, required final List<Media> list})
      : _list = list;

  @override
  final TimeWindow timeWindow;
  final List<Media> _list;
  @override
  List<Media> get list {
    if (_list is EqualUnmodifiableListView) return _list;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'MoviesAndSeriesState.loaded(timeWindow: $timeWindow, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesAndSeriesStateLoaded &&
            (identical(other.timeWindow, timeWindow) ||
                other.timeWindow == timeWindow) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, timeWindow, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesAndSeriesStateLoadedCopyWith<_$MoviesAndSeriesStateLoaded>
      get copyWith => __$$MoviesAndSeriesStateLoadedCopyWithImpl<
          _$MoviesAndSeriesStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeWindow timeWindow) loading,
    required TResult Function(TimeWindow timeWindow) failed,
    required TResult Function(TimeWindow timeWindow, List<Media> list) loaded,
  }) {
    return loaded(timeWindow, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TimeWindow timeWindow)? loading,
    TResult? Function(TimeWindow timeWindow)? failed,
    TResult? Function(TimeWindow timeWindow, List<Media> list)? loaded,
  }) {
    return loaded?.call(timeWindow, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeWindow timeWindow)? loading,
    TResult Function(TimeWindow timeWindow)? failed,
    TResult Function(TimeWindow timeWindow, List<Media> list)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(timeWindow, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesAndSeriesStateLoading value) loading,
    required TResult Function(MoviesAndSeriesStateFailed value) failed,
    required TResult Function(MoviesAndSeriesStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesAndSeriesStateLoading value)? loading,
    TResult? Function(MoviesAndSeriesStateFailed value)? failed,
    TResult? Function(MoviesAndSeriesStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesAndSeriesStateLoading value)? loading,
    TResult Function(MoviesAndSeriesStateFailed value)? failed,
    TResult Function(MoviesAndSeriesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MoviesAndSeriesStateLoaded implements MoviesAndSeriesState {
  const factory MoviesAndSeriesStateLoaded(
      {required final TimeWindow timeWindow,
      required final List<Media> list}) = _$MoviesAndSeriesStateLoaded;

  @override
  TimeWindow get timeWindow;
  List<Media> get list;
  @override
  @JsonKey(ignore: true)
  _$$MoviesAndSeriesStateLoadedCopyWith<_$MoviesAndSeriesStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PerformersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Performer> list) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Performer> list)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Performer> list)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PerformersStateLoading value) loading,
    required TResult Function(PerformersStateFailed value) failed,
    required TResult Function(PerformersStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PerformersStateLoading value)? loading,
    TResult? Function(PerformersStateFailed value)? failed,
    TResult? Function(PerformersStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformersStateLoading value)? loading,
    TResult Function(PerformersStateFailed value)? failed,
    TResult Function(PerformersStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformersStateCopyWith<$Res> {
  factory $PerformersStateCopyWith(
          PerformersState value, $Res Function(PerformersState) then) =
      _$PerformersStateCopyWithImpl<$Res, PerformersState>;
}

/// @nodoc
class _$PerformersStateCopyWithImpl<$Res, $Val extends PerformersState>
    implements $PerformersStateCopyWith<$Res> {
  _$PerformersStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PerformersStateLoadingCopyWith<$Res> {
  factory _$$PerformersStateLoadingCopyWith(_$PerformersStateLoading value,
          $Res Function(_$PerformersStateLoading) then) =
      __$$PerformersStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PerformersStateLoadingCopyWithImpl<$Res>
    extends _$PerformersStateCopyWithImpl<$Res, _$PerformersStateLoading>
    implements _$$PerformersStateLoadingCopyWith<$Res> {
  __$$PerformersStateLoadingCopyWithImpl(_$PerformersStateLoading _value,
      $Res Function(_$PerformersStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PerformersStateLoading implements PerformersStateLoading {
  const _$PerformersStateLoading();

  @override
  String toString() {
    return 'PerformersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PerformersStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Performer> list) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Performer> list)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Performer> list)? loaded,
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
    required TResult Function(PerformersStateLoading value) loading,
    required TResult Function(PerformersStateFailed value) failed,
    required TResult Function(PerformersStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PerformersStateLoading value)? loading,
    TResult? Function(PerformersStateFailed value)? failed,
    TResult? Function(PerformersStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformersStateLoading value)? loading,
    TResult Function(PerformersStateFailed value)? failed,
    TResult Function(PerformersStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PerformersStateLoading implements PerformersState {
  const factory PerformersStateLoading() = _$PerformersStateLoading;
}

/// @nodoc
abstract class _$$PerformersStateFailedCopyWith<$Res> {
  factory _$$PerformersStateFailedCopyWith(_$PerformersStateFailed value,
          $Res Function(_$PerformersStateFailed) then) =
      __$$PerformersStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PerformersStateFailedCopyWithImpl<$Res>
    extends _$PerformersStateCopyWithImpl<$Res, _$PerformersStateFailed>
    implements _$$PerformersStateFailedCopyWith<$Res> {
  __$$PerformersStateFailedCopyWithImpl(_$PerformersStateFailed _value,
      $Res Function(_$PerformersStateFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PerformersStateFailed implements PerformersStateFailed {
  const _$PerformersStateFailed();

  @override
  String toString() {
    return 'PerformersState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PerformersStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Performer> list) loaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Performer> list)? loaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Performer> list)? loaded,
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
    required TResult Function(PerformersStateLoading value) loading,
    required TResult Function(PerformersStateFailed value) failed,
    required TResult Function(PerformersStateLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PerformersStateLoading value)? loading,
    TResult? Function(PerformersStateFailed value)? failed,
    TResult? Function(PerformersStateLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformersStateLoading value)? loading,
    TResult Function(PerformersStateFailed value)? failed,
    TResult Function(PerformersStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class PerformersStateFailed implements PerformersState {
  const factory PerformersStateFailed() = _$PerformersStateFailed;
}

/// @nodoc
abstract class _$$PerformersStateLoadedCopyWith<$Res> {
  factory _$$PerformersStateLoadedCopyWith(_$PerformersStateLoaded value,
          $Res Function(_$PerformersStateLoaded) then) =
      __$$PerformersStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Performer> list});
}

/// @nodoc
class __$$PerformersStateLoadedCopyWithImpl<$Res>
    extends _$PerformersStateCopyWithImpl<$Res, _$PerformersStateLoaded>
    implements _$$PerformersStateLoadedCopyWith<$Res> {
  __$$PerformersStateLoadedCopyWithImpl(_$PerformersStateLoaded _value,
      $Res Function(_$PerformersStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$PerformersStateLoaded(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Performer>,
    ));
  }
}

/// @nodoc

class _$PerformersStateLoaded implements PerformersStateLoaded {
  const _$PerformersStateLoaded(final List<Performer> list) : _list = list;

  final List<Performer> _list;
  @override
  List<Performer> get list {
    if (_list is EqualUnmodifiableListView) return _list;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'PerformersState.loaded(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformersStateLoaded &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformersStateLoadedCopyWith<_$PerformersStateLoaded> get copyWith =>
      __$$PerformersStateLoadedCopyWithImpl<_$PerformersStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Performer> list) loaded,
  }) {
    return loaded(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Performer> list)? loaded,
  }) {
    return loaded?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Performer> list)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PerformersStateLoading value) loading,
    required TResult Function(PerformersStateFailed value) failed,
    required TResult Function(PerformersStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PerformersStateLoading value)? loading,
    TResult? Function(PerformersStateFailed value)? failed,
    TResult? Function(PerformersStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformersStateLoading value)? loading,
    TResult Function(PerformersStateFailed value)? failed,
    TResult Function(PerformersStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PerformersStateLoaded implements PerformersState {
  const factory PerformersStateLoaded(final List<Performer> list) =
      _$PerformersStateLoaded;

  List<Performer> get list;
  @JsonKey(ignore: true)
  _$$PerformersStateLoadedCopyWith<_$PerformersStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

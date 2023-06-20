// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_request_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpRequestFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpRequestFailureNotFound value) notFound,
    required TResult Function(HttpRequestFailureNetwork value) network,
    required TResult Function(HttpRequestFailureUnauthorized value)
        unauthorized,
    required TResult Function(HttpRequestFailureUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailureNotFound value)? notFound,
    TResult? Function(HttpRequestFailureNetwork value)? network,
    TResult? Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult? Function(HttpRequestFailureUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpRequestFailureNotFound value)? notFound,
    TResult Function(HttpRequestFailureNetwork value)? network,
    TResult Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult Function(HttpRequestFailureUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpRequestFailureCopyWith<$Res> {
  factory $HttpRequestFailureCopyWith(
          HttpRequestFailure value, $Res Function(HttpRequestFailure) then) =
      _$HttpRequestFailureCopyWithImpl<$Res, HttpRequestFailure>;
}

/// @nodoc
class _$HttpRequestFailureCopyWithImpl<$Res, $Val extends HttpRequestFailure>
    implements $HttpRequestFailureCopyWith<$Res> {
  _$HttpRequestFailureCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HttpRequestFailureNotFoundCopyWith<$Res> {
  factory _$$HttpRequestFailureNotFoundCopyWith(
          _$HttpRequestFailureNotFound value,
          $Res Function(_$HttpRequestFailureNotFound) then) =
      __$$HttpRequestFailureNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpRequestFailureNotFoundCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$HttpRequestFailureNotFound>
    implements _$$HttpRequestFailureNotFoundCopyWith<$Res> {
  __$$HttpRequestFailureNotFoundCopyWithImpl(
      _$HttpRequestFailureNotFound _value,
      $Res Function(_$HttpRequestFailureNotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpRequestFailureNotFound implements HttpRequestFailureNotFound {
  _$HttpRequestFailureNotFound();

  @override
  String toString() {
    return 'HttpRequestFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpRequestFailureNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpRequestFailureNotFound value) notFound,
    required TResult Function(HttpRequestFailureNetwork value) network,
    required TResult Function(HttpRequestFailureUnauthorized value)
        unauthorized,
    required TResult Function(HttpRequestFailureUnknown value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailureNotFound value)? notFound,
    TResult? Function(HttpRequestFailureNetwork value)? network,
    TResult? Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult? Function(HttpRequestFailureUnknown value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpRequestFailureNotFound value)? notFound,
    TResult Function(HttpRequestFailureNetwork value)? network,
    TResult Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult Function(HttpRequestFailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class HttpRequestFailureNotFound implements HttpRequestFailure {
  factory HttpRequestFailureNotFound() = _$HttpRequestFailureNotFound;
}

/// @nodoc
abstract class _$$HttpRequestFailureNetworkCopyWith<$Res> {
  factory _$$HttpRequestFailureNetworkCopyWith(
          _$HttpRequestFailureNetwork value,
          $Res Function(_$HttpRequestFailureNetwork) then) =
      __$$HttpRequestFailureNetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpRequestFailureNetworkCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$HttpRequestFailureNetwork>
    implements _$$HttpRequestFailureNetworkCopyWith<$Res> {
  __$$HttpRequestFailureNetworkCopyWithImpl(_$HttpRequestFailureNetwork _value,
      $Res Function(_$HttpRequestFailureNetwork) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpRequestFailureNetwork implements HttpRequestFailureNetwork {
  _$HttpRequestFailureNetwork();

  @override
  String toString() {
    return 'HttpRequestFailure.network()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpRequestFailureNetwork);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpRequestFailureNotFound value) notFound,
    required TResult Function(HttpRequestFailureNetwork value) network,
    required TResult Function(HttpRequestFailureUnauthorized value)
        unauthorized,
    required TResult Function(HttpRequestFailureUnknown value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailureNotFound value)? notFound,
    TResult? Function(HttpRequestFailureNetwork value)? network,
    TResult? Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult? Function(HttpRequestFailureUnknown value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpRequestFailureNotFound value)? notFound,
    TResult Function(HttpRequestFailureNetwork value)? network,
    TResult Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult Function(HttpRequestFailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class HttpRequestFailureNetwork implements HttpRequestFailure {
  factory HttpRequestFailureNetwork() = _$HttpRequestFailureNetwork;
}

/// @nodoc
abstract class _$$HttpRequestFailureUnauthorizedCopyWith<$Res> {
  factory _$$HttpRequestFailureUnauthorizedCopyWith(
          _$HttpRequestFailureUnauthorized value,
          $Res Function(_$HttpRequestFailureUnauthorized) then) =
      __$$HttpRequestFailureUnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpRequestFailureUnauthorizedCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res,
        _$HttpRequestFailureUnauthorized>
    implements _$$HttpRequestFailureUnauthorizedCopyWith<$Res> {
  __$$HttpRequestFailureUnauthorizedCopyWithImpl(
      _$HttpRequestFailureUnauthorized _value,
      $Res Function(_$HttpRequestFailureUnauthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpRequestFailureUnauthorized
    implements HttpRequestFailureUnauthorized {
  _$HttpRequestFailureUnauthorized();

  @override
  String toString() {
    return 'HttpRequestFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpRequestFailureUnauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpRequestFailureNotFound value) notFound,
    required TResult Function(HttpRequestFailureNetwork value) network,
    required TResult Function(HttpRequestFailureUnauthorized value)
        unauthorized,
    required TResult Function(HttpRequestFailureUnknown value) unknown,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailureNotFound value)? notFound,
    TResult? Function(HttpRequestFailureNetwork value)? network,
    TResult? Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult? Function(HttpRequestFailureUnknown value)? unknown,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpRequestFailureNotFound value)? notFound,
    TResult Function(HttpRequestFailureNetwork value)? network,
    TResult Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult Function(HttpRequestFailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class HttpRequestFailureUnauthorized implements HttpRequestFailure {
  factory HttpRequestFailureUnauthorized() = _$HttpRequestFailureUnauthorized;
}

/// @nodoc
abstract class _$$HttpRequestFailureUnknownCopyWith<$Res> {
  factory _$$HttpRequestFailureUnknownCopyWith(
          _$HttpRequestFailureUnknown value,
          $Res Function(_$HttpRequestFailureUnknown) then) =
      __$$HttpRequestFailureUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpRequestFailureUnknownCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$HttpRequestFailureUnknown>
    implements _$$HttpRequestFailureUnknownCopyWith<$Res> {
  __$$HttpRequestFailureUnknownCopyWithImpl(_$HttpRequestFailureUnknown _value,
      $Res Function(_$HttpRequestFailureUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpRequestFailureUnknown implements HttpRequestFailureUnknown {
  _$HttpRequestFailureUnknown();

  @override
  String toString() {
    return 'HttpRequestFailure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpRequestFailureUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpRequestFailureNotFound value) notFound,
    required TResult Function(HttpRequestFailureNetwork value) network,
    required TResult Function(HttpRequestFailureUnauthorized value)
        unauthorized,
    required TResult Function(HttpRequestFailureUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailureNotFound value)? notFound,
    TResult? Function(HttpRequestFailureNetwork value)? network,
    TResult? Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult? Function(HttpRequestFailureUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpRequestFailureNotFound value)? notFound,
    TResult Function(HttpRequestFailureNetwork value)? network,
    TResult Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult Function(HttpRequestFailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class HttpRequestFailureUnknown implements HttpRequestFailure {
  factory HttpRequestFailureUnknown() = _$HttpRequestFailureUnknown;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationEventTearOff {
  const _$NotificationEventTearOff();

  _NotificationEventInitial started() {
    return const _NotificationEventInitial();
  }
}

/// @nodoc
const $NotificationEvent = _$NotificationEventTearOff();

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationEventInitial value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotificationEventInitial value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationEventInitial value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

/// @nodoc
abstract class _$NotificationEventInitialCopyWith<$Res> {
  factory _$NotificationEventInitialCopyWith(_NotificationEventInitial value,
          $Res Function(_NotificationEventInitial) then) =
      __$NotificationEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotificationEventInitialCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$NotificationEventInitialCopyWith<$Res> {
  __$NotificationEventInitialCopyWithImpl(_NotificationEventInitial _value,
      $Res Function(_NotificationEventInitial) _then)
      : super(_value, (v) => _then(v as _NotificationEventInitial));

  @override
  _NotificationEventInitial get _value =>
      super._value as _NotificationEventInitial;
}

/// @nodoc

class _$_NotificationEventInitial implements _NotificationEventInitial {
  const _$_NotificationEventInitial();

  @override
  String toString() {
    return 'NotificationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotificationEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationEventInitial value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotificationEventInitial value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationEventInitial value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _NotificationEventInitial implements NotificationEvent {
  const factory _NotificationEventInitial() = _$_NotificationEventInitial;
}

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  _NotificationState call(
      {required bool isSubmitting,
      required bool noInternet,
      required bool serverError,
      required List<NotificationModel> notifications}) {
    return _NotificationState(
      isSubmitting: isSubmitting,
      noInternet: noInternet,
      serverError: serverError,
      notifications: notifications,
    );
  }
}

/// @nodoc
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get noInternet => throw _privateConstructorUsedError;
  bool get serverError => throw _privateConstructorUsedError;
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      bool noInternet,
      bool serverError,
      List<NotificationModel> notifications});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? serverError = freezed,
    Object? notifications = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: serverError == freezed
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc
abstract class _$NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(
          _NotificationState value, $Res Function(_NotificationState) then) =
      __$NotificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      bool noInternet,
      bool serverError,
      List<NotificationModel> notifications});
}

/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(
      _NotificationState _value, $Res Function(_NotificationState) _then)
      : super(_value, (v) => _then(v as _NotificationState));

  @override
  _NotificationState get _value => super._value as _NotificationState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? serverError = freezed,
    Object? notifications = freezed,
  }) {
    return _then(_NotificationState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: serverError == freezed
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc

class _$_NotificationState implements _NotificationState {
  const _$_NotificationState(
      {required this.isSubmitting,
      required this.noInternet,
      required this.serverError,
      required this.notifications});

  @override
  final bool isSubmitting;
  @override
  final bool noInternet;
  @override
  final bool serverError;
  @override
  final List<NotificationModel> notifications;

  @override
  String toString() {
    return 'NotificationState(isSubmitting: $isSubmitting, noInternet: $noInternet, serverError: $serverError, notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.noInternet, noInternet) ||
                const DeepCollectionEquality()
                    .equals(other.noInternet, noInternet)) &&
            (identical(other.serverError, serverError) ||
                const DeepCollectionEquality()
                    .equals(other.serverError, serverError)) &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(noInternet) ^
      const DeepCollectionEquality().hash(serverError) ^
      const DeepCollectionEquality().hash(notifications);

  @JsonKey(ignore: true)
  @override
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {required bool isSubmitting,
      required bool noInternet,
      required bool serverError,
      required List<NotificationModel> notifications}) = _$_NotificationState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get noInternet => throw _privateConstructorUsedError;
  @override
  bool get serverError => throw _privateConstructorUsedError;
  @override
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

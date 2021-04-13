// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_user_by_username_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetUserByUsernameStateTearOff {
  const _$GetUserByUsernameStateTearOff();

  GetUserByUsernameStateStarted started() {
    return const GetUserByUsernameStateStarted();
  }

  GetUserByUsernameStateLoadInProgress loadInProgress() {
    return const GetUserByUsernameStateLoadInProgress();
  }

  GetUserByUsernameStateLoadSuccess loadSuccess(UserEntity user) {
    return GetUserByUsernameStateLoadSuccess(
      user,
    );
  }

  GetUserByUsernameStateLoadFailure loadFailure(
      GetUserByUsernameUsecaseFailure failure) {
    return GetUserByUsernameStateLoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $GetUserByUsernameState = _$GetUserByUsernameStateTearOff();

/// @nodoc
mixin _$GetUserByUsernameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(UserEntity user) loadSuccess,
    required TResult Function(GetUserByUsernameUsecaseFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(UserEntity user)? loadSuccess,
    TResult Function(GetUserByUsernameUsecaseFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserByUsernameStateStarted value) started,
    required TResult Function(GetUserByUsernameStateLoadInProgress value)
        loadInProgress,
    required TResult Function(GetUserByUsernameStateLoadSuccess value)
        loadSuccess,
    required TResult Function(GetUserByUsernameStateLoadFailure value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserByUsernameStateStarted value)? started,
    TResult Function(GetUserByUsernameStateLoadInProgress value)?
        loadInProgress,
    TResult Function(GetUserByUsernameStateLoadSuccess value)? loadSuccess,
    TResult Function(GetUserByUsernameStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserByUsernameStateCopyWith<$Res> {
  factory $GetUserByUsernameStateCopyWith(GetUserByUsernameState value,
          $Res Function(GetUserByUsernameState) then) =
      _$GetUserByUsernameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserByUsernameStateCopyWithImpl<$Res>
    implements $GetUserByUsernameStateCopyWith<$Res> {
  _$GetUserByUsernameStateCopyWithImpl(this._value, this._then);

  final GetUserByUsernameState _value;
  // ignore: unused_field
  final $Res Function(GetUserByUsernameState) _then;
}

/// @nodoc
abstract class $GetUserByUsernameStateStartedCopyWith<$Res> {
  factory $GetUserByUsernameStateStartedCopyWith(
          GetUserByUsernameStateStarted value,
          $Res Function(GetUserByUsernameStateStarted) then) =
      _$GetUserByUsernameStateStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserByUsernameStateStartedCopyWithImpl<$Res>
    extends _$GetUserByUsernameStateCopyWithImpl<$Res>
    implements $GetUserByUsernameStateStartedCopyWith<$Res> {
  _$GetUserByUsernameStateStartedCopyWithImpl(
      GetUserByUsernameStateStarted _value,
      $Res Function(GetUserByUsernameStateStarted) _then)
      : super(_value, (v) => _then(v as GetUserByUsernameStateStarted));

  @override
  GetUserByUsernameStateStarted get _value =>
      super._value as GetUserByUsernameStateStarted;
}

/// @nodoc
class _$GetUserByUsernameStateStarted implements GetUserByUsernameStateStarted {
  const _$GetUserByUsernameStateStarted();

  @override
  String toString() {
    return 'GetUserByUsernameState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetUserByUsernameStateStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(UserEntity user) loadSuccess,
    required TResult Function(GetUserByUsernameUsecaseFailure failure)
        loadFailure,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(UserEntity user)? loadSuccess,
    TResult Function(GetUserByUsernameUsecaseFailure failure)? loadFailure,
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
    required TResult Function(GetUserByUsernameStateStarted value) started,
    required TResult Function(GetUserByUsernameStateLoadInProgress value)
        loadInProgress,
    required TResult Function(GetUserByUsernameStateLoadSuccess value)
        loadSuccess,
    required TResult Function(GetUserByUsernameStateLoadFailure value)
        loadFailure,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserByUsernameStateStarted value)? started,
    TResult Function(GetUserByUsernameStateLoadInProgress value)?
        loadInProgress,
    TResult Function(GetUserByUsernameStateLoadSuccess value)? loadSuccess,
    TResult Function(GetUserByUsernameStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class GetUserByUsernameStateStarted implements GetUserByUsernameState {
  const factory GetUserByUsernameStateStarted() =
      _$GetUserByUsernameStateStarted;
}

/// @nodoc
abstract class $GetUserByUsernameStateLoadInProgressCopyWith<$Res> {
  factory $GetUserByUsernameStateLoadInProgressCopyWith(
          GetUserByUsernameStateLoadInProgress value,
          $Res Function(GetUserByUsernameStateLoadInProgress) then) =
      _$GetUserByUsernameStateLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserByUsernameStateLoadInProgressCopyWithImpl<$Res>
    extends _$GetUserByUsernameStateCopyWithImpl<$Res>
    implements $GetUserByUsernameStateLoadInProgressCopyWith<$Res> {
  _$GetUserByUsernameStateLoadInProgressCopyWithImpl(
      GetUserByUsernameStateLoadInProgress _value,
      $Res Function(GetUserByUsernameStateLoadInProgress) _then)
      : super(_value, (v) => _then(v as GetUserByUsernameStateLoadInProgress));

  @override
  GetUserByUsernameStateLoadInProgress get _value =>
      super._value as GetUserByUsernameStateLoadInProgress;
}

/// @nodoc
class _$GetUserByUsernameStateLoadInProgress
    implements GetUserByUsernameStateLoadInProgress {
  const _$GetUserByUsernameStateLoadInProgress();

  @override
  String toString() {
    return 'GetUserByUsernameState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserByUsernameStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(UserEntity user) loadSuccess,
    required TResult Function(GetUserByUsernameUsecaseFailure failure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(UserEntity user)? loadSuccess,
    TResult Function(GetUserByUsernameUsecaseFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserByUsernameStateStarted value) started,
    required TResult Function(GetUserByUsernameStateLoadInProgress value)
        loadInProgress,
    required TResult Function(GetUserByUsernameStateLoadSuccess value)
        loadSuccess,
    required TResult Function(GetUserByUsernameStateLoadFailure value)
        loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserByUsernameStateStarted value)? started,
    TResult Function(GetUserByUsernameStateLoadInProgress value)?
        loadInProgress,
    TResult Function(GetUserByUsernameStateLoadSuccess value)? loadSuccess,
    TResult Function(GetUserByUsernameStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class GetUserByUsernameStateLoadInProgress
    implements GetUserByUsernameState {
  const factory GetUserByUsernameStateLoadInProgress() =
      _$GetUserByUsernameStateLoadInProgress;
}

/// @nodoc
abstract class $GetUserByUsernameStateLoadSuccessCopyWith<$Res> {
  factory $GetUserByUsernameStateLoadSuccessCopyWith(
          GetUserByUsernameStateLoadSuccess value,
          $Res Function(GetUserByUsernameStateLoadSuccess) then) =
      _$GetUserByUsernameStateLoadSuccessCopyWithImpl<$Res>;
  $Res call({UserEntity user});
}

/// @nodoc
class _$GetUserByUsernameStateLoadSuccessCopyWithImpl<$Res>
    extends _$GetUserByUsernameStateCopyWithImpl<$Res>
    implements $GetUserByUsernameStateLoadSuccessCopyWith<$Res> {
  _$GetUserByUsernameStateLoadSuccessCopyWithImpl(
      GetUserByUsernameStateLoadSuccess _value,
      $Res Function(GetUserByUsernameStateLoadSuccess) _then)
      : super(_value, (v) => _then(v as GetUserByUsernameStateLoadSuccess));

  @override
  GetUserByUsernameStateLoadSuccess get _value =>
      super._value as GetUserByUsernameStateLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(GetUserByUsernameStateLoadSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc
class _$GetUserByUsernameStateLoadSuccess
    implements GetUserByUsernameStateLoadSuccess {
  const _$GetUserByUsernameStateLoadSuccess(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'GetUserByUsernameState.loadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserByUsernameStateLoadSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $GetUserByUsernameStateLoadSuccessCopyWith<GetUserByUsernameStateLoadSuccess>
      get copyWith => _$GetUserByUsernameStateLoadSuccessCopyWithImpl<
          GetUserByUsernameStateLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(UserEntity user) loadSuccess,
    required TResult Function(GetUserByUsernameUsecaseFailure failure)
        loadFailure,
  }) {
    return loadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(UserEntity user)? loadSuccess,
    TResult Function(GetUserByUsernameUsecaseFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserByUsernameStateStarted value) started,
    required TResult Function(GetUserByUsernameStateLoadInProgress value)
        loadInProgress,
    required TResult Function(GetUserByUsernameStateLoadSuccess value)
        loadSuccess,
    required TResult Function(GetUserByUsernameStateLoadFailure value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserByUsernameStateStarted value)? started,
    TResult Function(GetUserByUsernameStateLoadInProgress value)?
        loadInProgress,
    TResult Function(GetUserByUsernameStateLoadSuccess value)? loadSuccess,
    TResult Function(GetUserByUsernameStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class GetUserByUsernameStateLoadSuccess
    implements GetUserByUsernameState {
  const factory GetUserByUsernameStateLoadSuccess(UserEntity user) =
      _$GetUserByUsernameStateLoadSuccess;

  UserEntity get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserByUsernameStateLoadSuccessCopyWith<GetUserByUsernameStateLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserByUsernameStateLoadFailureCopyWith<$Res> {
  factory $GetUserByUsernameStateLoadFailureCopyWith(
          GetUserByUsernameStateLoadFailure value,
          $Res Function(GetUserByUsernameStateLoadFailure) then) =
      _$GetUserByUsernameStateLoadFailureCopyWithImpl<$Res>;
  $Res call({GetUserByUsernameUsecaseFailure failure});

  $GetUserByUsernameUsecaseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$GetUserByUsernameStateLoadFailureCopyWithImpl<$Res>
    extends _$GetUserByUsernameStateCopyWithImpl<$Res>
    implements $GetUserByUsernameStateLoadFailureCopyWith<$Res> {
  _$GetUserByUsernameStateLoadFailureCopyWithImpl(
      GetUserByUsernameStateLoadFailure _value,
      $Res Function(GetUserByUsernameStateLoadFailure) _then)
      : super(_value, (v) => _then(v as GetUserByUsernameStateLoadFailure));

  @override
  GetUserByUsernameStateLoadFailure get _value =>
      super._value as GetUserByUsernameStateLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(GetUserByUsernameStateLoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GetUserByUsernameUsecaseFailure,
    ));
  }

  @override
  $GetUserByUsernameUsecaseFailureCopyWith<$Res> get failure {
    return $GetUserByUsernameUsecaseFailureCopyWith<$Res>(_value.failure,
        (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$GetUserByUsernameStateLoadFailure
    implements GetUserByUsernameStateLoadFailure {
  const _$GetUserByUsernameStateLoadFailure(this.failure);

  @override
  final GetUserByUsernameUsecaseFailure failure;

  @override
  String toString() {
    return 'GetUserByUsernameState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserByUsernameStateLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $GetUserByUsernameStateLoadFailureCopyWith<GetUserByUsernameStateLoadFailure>
      get copyWith => _$GetUserByUsernameStateLoadFailureCopyWithImpl<
          GetUserByUsernameStateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(UserEntity user) loadSuccess,
    required TResult Function(GetUserByUsernameUsecaseFailure failure)
        loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(UserEntity user)? loadSuccess,
    TResult Function(GetUserByUsernameUsecaseFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserByUsernameStateStarted value) started,
    required TResult Function(GetUserByUsernameStateLoadInProgress value)
        loadInProgress,
    required TResult Function(GetUserByUsernameStateLoadSuccess value)
        loadSuccess,
    required TResult Function(GetUserByUsernameStateLoadFailure value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserByUsernameStateStarted value)? started,
    TResult Function(GetUserByUsernameStateLoadInProgress value)?
        loadInProgress,
    TResult Function(GetUserByUsernameStateLoadSuccess value)? loadSuccess,
    TResult Function(GetUserByUsernameStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class GetUserByUsernameStateLoadFailure
    implements GetUserByUsernameState {
  const factory GetUserByUsernameStateLoadFailure(
          GetUserByUsernameUsecaseFailure failure) =
      _$GetUserByUsernameStateLoadFailure;

  GetUserByUsernameUsecaseFailure get failure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserByUsernameStateLoadFailureCopyWith<GetUserByUsernameStateLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}

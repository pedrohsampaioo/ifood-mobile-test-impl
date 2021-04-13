// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_posts_by_id_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetPostsByIdStateTearOff {
  const _$GetPostsByIdStateTearOff();

  GetPostsByIdStateStarted started() {
    return const GetPostsByIdStateStarted();
  }

  GetPostsByIdStateLoadInProgress loadInProgress() {
    return const GetPostsByIdStateLoadInProgress();
  }

  GetPostsByIdStateLoadSuccess loadSuccess(List<PostEntity> posts) {
    return GetPostsByIdStateLoadSuccess(
      posts,
    );
  }

  GetPostsByIdStateLoadFailure loadFailure(GetPostsByIdUsecaseFailure failure) {
    return GetPostsByIdStateLoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $GetPostsByIdState = _$GetPostsByIdStateTearOff();

/// @nodoc
mixin _$GetPostsByIdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(List<PostEntity> posts) loadSuccess,
    required TResult Function(GetPostsByIdUsecaseFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<PostEntity> posts)? loadSuccess,
    TResult Function(GetPostsByIdUsecaseFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostsByIdStateStarted value) started,
    required TResult Function(GetPostsByIdStateLoadInProgress value)
        loadInProgress,
    required TResult Function(GetPostsByIdStateLoadSuccess value) loadSuccess,
    required TResult Function(GetPostsByIdStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsByIdStateStarted value)? started,
    TResult Function(GetPostsByIdStateLoadInProgress value)? loadInProgress,
    TResult Function(GetPostsByIdStateLoadSuccess value)? loadSuccess,
    TResult Function(GetPostsByIdStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsByIdStateCopyWith<$Res> {
  factory $GetPostsByIdStateCopyWith(
          GetPostsByIdState value, $Res Function(GetPostsByIdState) then) =
      _$GetPostsByIdStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPostsByIdStateCopyWithImpl<$Res>
    implements $GetPostsByIdStateCopyWith<$Res> {
  _$GetPostsByIdStateCopyWithImpl(this._value, this._then);

  final GetPostsByIdState _value;
  // ignore: unused_field
  final $Res Function(GetPostsByIdState) _then;
}

/// @nodoc
abstract class $GetPostsByIdStateStartedCopyWith<$Res> {
  factory $GetPostsByIdStateStartedCopyWith(GetPostsByIdStateStarted value,
          $Res Function(GetPostsByIdStateStarted) then) =
      _$GetPostsByIdStateStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPostsByIdStateStartedCopyWithImpl<$Res>
    extends _$GetPostsByIdStateCopyWithImpl<$Res>
    implements $GetPostsByIdStateStartedCopyWith<$Res> {
  _$GetPostsByIdStateStartedCopyWithImpl(GetPostsByIdStateStarted _value,
      $Res Function(GetPostsByIdStateStarted) _then)
      : super(_value, (v) => _then(v as GetPostsByIdStateStarted));

  @override
  GetPostsByIdStateStarted get _value =>
      super._value as GetPostsByIdStateStarted;
}

/// @nodoc
class _$GetPostsByIdStateStarted implements GetPostsByIdStateStarted {
  const _$GetPostsByIdStateStarted();

  @override
  String toString() {
    return 'GetPostsByIdState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPostsByIdStateStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(List<PostEntity> posts) loadSuccess,
    required TResult Function(GetPostsByIdUsecaseFailure failure) loadFailure,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<PostEntity> posts)? loadSuccess,
    TResult Function(GetPostsByIdUsecaseFailure failure)? loadFailure,
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
    required TResult Function(GetPostsByIdStateStarted value) started,
    required TResult Function(GetPostsByIdStateLoadInProgress value)
        loadInProgress,
    required TResult Function(GetPostsByIdStateLoadSuccess value) loadSuccess,
    required TResult Function(GetPostsByIdStateLoadFailure value) loadFailure,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsByIdStateStarted value)? started,
    TResult Function(GetPostsByIdStateLoadInProgress value)? loadInProgress,
    TResult Function(GetPostsByIdStateLoadSuccess value)? loadSuccess,
    TResult Function(GetPostsByIdStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class GetPostsByIdStateStarted implements GetPostsByIdState {
  const factory GetPostsByIdStateStarted() = _$GetPostsByIdStateStarted;
}

/// @nodoc
abstract class $GetPostsByIdStateLoadInProgressCopyWith<$Res> {
  factory $GetPostsByIdStateLoadInProgressCopyWith(
          GetPostsByIdStateLoadInProgress value,
          $Res Function(GetPostsByIdStateLoadInProgress) then) =
      _$GetPostsByIdStateLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPostsByIdStateLoadInProgressCopyWithImpl<$Res>
    extends _$GetPostsByIdStateCopyWithImpl<$Res>
    implements $GetPostsByIdStateLoadInProgressCopyWith<$Res> {
  _$GetPostsByIdStateLoadInProgressCopyWithImpl(
      GetPostsByIdStateLoadInProgress _value,
      $Res Function(GetPostsByIdStateLoadInProgress) _then)
      : super(_value, (v) => _then(v as GetPostsByIdStateLoadInProgress));

  @override
  GetPostsByIdStateLoadInProgress get _value =>
      super._value as GetPostsByIdStateLoadInProgress;
}

/// @nodoc
class _$GetPostsByIdStateLoadInProgress
    implements GetPostsByIdStateLoadInProgress {
  const _$GetPostsByIdStateLoadInProgress();

  @override
  String toString() {
    return 'GetPostsByIdState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPostsByIdStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(List<PostEntity> posts) loadSuccess,
    required TResult Function(GetPostsByIdUsecaseFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<PostEntity> posts)? loadSuccess,
    TResult Function(GetPostsByIdUsecaseFailure failure)? loadFailure,
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
    required TResult Function(GetPostsByIdStateStarted value) started,
    required TResult Function(GetPostsByIdStateLoadInProgress value)
        loadInProgress,
    required TResult Function(GetPostsByIdStateLoadSuccess value) loadSuccess,
    required TResult Function(GetPostsByIdStateLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsByIdStateStarted value)? started,
    TResult Function(GetPostsByIdStateLoadInProgress value)? loadInProgress,
    TResult Function(GetPostsByIdStateLoadSuccess value)? loadSuccess,
    TResult Function(GetPostsByIdStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class GetPostsByIdStateLoadInProgress implements GetPostsByIdState {
  const factory GetPostsByIdStateLoadInProgress() =
      _$GetPostsByIdStateLoadInProgress;
}

/// @nodoc
abstract class $GetPostsByIdStateLoadSuccessCopyWith<$Res> {
  factory $GetPostsByIdStateLoadSuccessCopyWith(
          GetPostsByIdStateLoadSuccess value,
          $Res Function(GetPostsByIdStateLoadSuccess) then) =
      _$GetPostsByIdStateLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<PostEntity> posts});
}

/// @nodoc
class _$GetPostsByIdStateLoadSuccessCopyWithImpl<$Res>
    extends _$GetPostsByIdStateCopyWithImpl<$Res>
    implements $GetPostsByIdStateLoadSuccessCopyWith<$Res> {
  _$GetPostsByIdStateLoadSuccessCopyWithImpl(
      GetPostsByIdStateLoadSuccess _value,
      $Res Function(GetPostsByIdStateLoadSuccess) _then)
      : super(_value, (v) => _then(v as GetPostsByIdStateLoadSuccess));

  @override
  GetPostsByIdStateLoadSuccess get _value =>
      super._value as GetPostsByIdStateLoadSuccess;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(GetPostsByIdStateLoadSuccess(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
    ));
  }
}

/// @nodoc
class _$GetPostsByIdStateLoadSuccess implements GetPostsByIdStateLoadSuccess {
  const _$GetPostsByIdStateLoadSuccess(this.posts);

  @override
  final List<PostEntity> posts;

  @override
  String toString() {
    return 'GetPostsByIdState.loadSuccess(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPostsByIdStateLoadSuccess &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @JsonKey(ignore: true)
  @override
  $GetPostsByIdStateLoadSuccessCopyWith<GetPostsByIdStateLoadSuccess>
      get copyWith => _$GetPostsByIdStateLoadSuccessCopyWithImpl<
          GetPostsByIdStateLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(List<PostEntity> posts) loadSuccess,
    required TResult Function(GetPostsByIdUsecaseFailure failure) loadFailure,
  }) {
    return loadSuccess(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<PostEntity> posts)? loadSuccess,
    TResult Function(GetPostsByIdUsecaseFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostsByIdStateStarted value) started,
    required TResult Function(GetPostsByIdStateLoadInProgress value)
        loadInProgress,
    required TResult Function(GetPostsByIdStateLoadSuccess value) loadSuccess,
    required TResult Function(GetPostsByIdStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsByIdStateStarted value)? started,
    TResult Function(GetPostsByIdStateLoadInProgress value)? loadInProgress,
    TResult Function(GetPostsByIdStateLoadSuccess value)? loadSuccess,
    TResult Function(GetPostsByIdStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class GetPostsByIdStateLoadSuccess implements GetPostsByIdState {
  const factory GetPostsByIdStateLoadSuccess(List<PostEntity> posts) =
      _$GetPostsByIdStateLoadSuccess;

  List<PostEntity> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPostsByIdStateLoadSuccessCopyWith<GetPostsByIdStateLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsByIdStateLoadFailureCopyWith<$Res> {
  factory $GetPostsByIdStateLoadFailureCopyWith(
          GetPostsByIdStateLoadFailure value,
          $Res Function(GetPostsByIdStateLoadFailure) then) =
      _$GetPostsByIdStateLoadFailureCopyWithImpl<$Res>;
  $Res call({GetPostsByIdUsecaseFailure failure});

  $GetPostsByIdUsecaseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$GetPostsByIdStateLoadFailureCopyWithImpl<$Res>
    extends _$GetPostsByIdStateCopyWithImpl<$Res>
    implements $GetPostsByIdStateLoadFailureCopyWith<$Res> {
  _$GetPostsByIdStateLoadFailureCopyWithImpl(
      GetPostsByIdStateLoadFailure _value,
      $Res Function(GetPostsByIdStateLoadFailure) _then)
      : super(_value, (v) => _then(v as GetPostsByIdStateLoadFailure));

  @override
  GetPostsByIdStateLoadFailure get _value =>
      super._value as GetPostsByIdStateLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(GetPostsByIdStateLoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GetPostsByIdUsecaseFailure,
    ));
  }

  @override
  $GetPostsByIdUsecaseFailureCopyWith<$Res> get failure {
    return $GetPostsByIdUsecaseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$GetPostsByIdStateLoadFailure implements GetPostsByIdStateLoadFailure {
  const _$GetPostsByIdStateLoadFailure(this.failure);

  @override
  final GetPostsByIdUsecaseFailure failure;

  @override
  String toString() {
    return 'GetPostsByIdState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPostsByIdStateLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $GetPostsByIdStateLoadFailureCopyWith<GetPostsByIdStateLoadFailure>
      get copyWith => _$GetPostsByIdStateLoadFailureCopyWithImpl<
          GetPostsByIdStateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(List<PostEntity> posts) loadSuccess,
    required TResult Function(GetPostsByIdUsecaseFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<PostEntity> posts)? loadSuccess,
    TResult Function(GetPostsByIdUsecaseFailure failure)? loadFailure,
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
    required TResult Function(GetPostsByIdStateStarted value) started,
    required TResult Function(GetPostsByIdStateLoadInProgress value)
        loadInProgress,
    required TResult Function(GetPostsByIdStateLoadSuccess value) loadSuccess,
    required TResult Function(GetPostsByIdStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsByIdStateStarted value)? started,
    TResult Function(GetPostsByIdStateLoadInProgress value)? loadInProgress,
    TResult Function(GetPostsByIdStateLoadSuccess value)? loadSuccess,
    TResult Function(GetPostsByIdStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class GetPostsByIdStateLoadFailure implements GetPostsByIdState {
  const factory GetPostsByIdStateLoadFailure(
      GetPostsByIdUsecaseFailure failure) = _$GetPostsByIdStateLoadFailure;

  GetPostsByIdUsecaseFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPostsByIdStateLoadFailureCopyWith<GetPostsByIdStateLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'analyse_posts_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnalysePostsStateTearOff {
  const _$AnalysePostsStateTearOff();

  AnalysePostsStateStarted started() {
    return const AnalysePostsStateStarted();
  }

  AnalysePostsStateLoadInProgress loadInProgress() {
    return const AnalysePostsStateLoadInProgress();
  }

  AnalysePostsStateLoadSuccess loadSuccess(SentimentEntity sentiment) {
    return AnalysePostsStateLoadSuccess(
      sentiment,
    );
  }

  AnalysePostsStateLoadFailure loadFailure(AnalysePostsByTextFailure failure) {
    return AnalysePostsStateLoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $AnalysePostsState = _$AnalysePostsStateTearOff();

/// @nodoc
mixin _$AnalysePostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(SentimentEntity sentiment) loadSuccess,
    required TResult Function(AnalysePostsByTextFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(SentimentEntity sentiment)? loadSuccess,
    TResult Function(AnalysePostsByTextFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysePostsStateStarted value) started,
    required TResult Function(AnalysePostsStateLoadInProgress value)
        loadInProgress,
    required TResult Function(AnalysePostsStateLoadSuccess value) loadSuccess,
    required TResult Function(AnalysePostsStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysePostsStateStarted value)? started,
    TResult Function(AnalysePostsStateLoadInProgress value)? loadInProgress,
    TResult Function(AnalysePostsStateLoadSuccess value)? loadSuccess,
    TResult Function(AnalysePostsStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysePostsStateCopyWith<$Res> {
  factory $AnalysePostsStateCopyWith(
          AnalysePostsState value, $Res Function(AnalysePostsState) then) =
      _$AnalysePostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnalysePostsStateCopyWithImpl<$Res>
    implements $AnalysePostsStateCopyWith<$Res> {
  _$AnalysePostsStateCopyWithImpl(this._value, this._then);

  final AnalysePostsState _value;
  // ignore: unused_field
  final $Res Function(AnalysePostsState) _then;
}

/// @nodoc
abstract class $AnalysePostsStateStartedCopyWith<$Res> {
  factory $AnalysePostsStateStartedCopyWith(AnalysePostsStateStarted value,
          $Res Function(AnalysePostsStateStarted) then) =
      _$AnalysePostsStateStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnalysePostsStateStartedCopyWithImpl<$Res>
    extends _$AnalysePostsStateCopyWithImpl<$Res>
    implements $AnalysePostsStateStartedCopyWith<$Res> {
  _$AnalysePostsStateStartedCopyWithImpl(AnalysePostsStateStarted _value,
      $Res Function(AnalysePostsStateStarted) _then)
      : super(_value, (v) => _then(v as AnalysePostsStateStarted));

  @override
  AnalysePostsStateStarted get _value =>
      super._value as AnalysePostsStateStarted;
}

/// @nodoc
class _$AnalysePostsStateStarted implements AnalysePostsStateStarted {
  const _$AnalysePostsStateStarted();

  @override
  String toString() {
    return 'AnalysePostsState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AnalysePostsStateStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(SentimentEntity sentiment) loadSuccess,
    required TResult Function(AnalysePostsByTextFailure failure) loadFailure,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(SentimentEntity sentiment)? loadSuccess,
    TResult Function(AnalysePostsByTextFailure failure)? loadFailure,
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
    required TResult Function(AnalysePostsStateStarted value) started,
    required TResult Function(AnalysePostsStateLoadInProgress value)
        loadInProgress,
    required TResult Function(AnalysePostsStateLoadSuccess value) loadSuccess,
    required TResult Function(AnalysePostsStateLoadFailure value) loadFailure,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysePostsStateStarted value)? started,
    TResult Function(AnalysePostsStateLoadInProgress value)? loadInProgress,
    TResult Function(AnalysePostsStateLoadSuccess value)? loadSuccess,
    TResult Function(AnalysePostsStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class AnalysePostsStateStarted implements AnalysePostsState {
  const factory AnalysePostsStateStarted() = _$AnalysePostsStateStarted;
}

/// @nodoc
abstract class $AnalysePostsStateLoadInProgressCopyWith<$Res> {
  factory $AnalysePostsStateLoadInProgressCopyWith(
          AnalysePostsStateLoadInProgress value,
          $Res Function(AnalysePostsStateLoadInProgress) then) =
      _$AnalysePostsStateLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnalysePostsStateLoadInProgressCopyWithImpl<$Res>
    extends _$AnalysePostsStateCopyWithImpl<$Res>
    implements $AnalysePostsStateLoadInProgressCopyWith<$Res> {
  _$AnalysePostsStateLoadInProgressCopyWithImpl(
      AnalysePostsStateLoadInProgress _value,
      $Res Function(AnalysePostsStateLoadInProgress) _then)
      : super(_value, (v) => _then(v as AnalysePostsStateLoadInProgress));

  @override
  AnalysePostsStateLoadInProgress get _value =>
      super._value as AnalysePostsStateLoadInProgress;
}

/// @nodoc
class _$AnalysePostsStateLoadInProgress
    implements AnalysePostsStateLoadInProgress {
  const _$AnalysePostsStateLoadInProgress();

  @override
  String toString() {
    return 'AnalysePostsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AnalysePostsStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(SentimentEntity sentiment) loadSuccess,
    required TResult Function(AnalysePostsByTextFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(SentimentEntity sentiment)? loadSuccess,
    TResult Function(AnalysePostsByTextFailure failure)? loadFailure,
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
    required TResult Function(AnalysePostsStateStarted value) started,
    required TResult Function(AnalysePostsStateLoadInProgress value)
        loadInProgress,
    required TResult Function(AnalysePostsStateLoadSuccess value) loadSuccess,
    required TResult Function(AnalysePostsStateLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysePostsStateStarted value)? started,
    TResult Function(AnalysePostsStateLoadInProgress value)? loadInProgress,
    TResult Function(AnalysePostsStateLoadSuccess value)? loadSuccess,
    TResult Function(AnalysePostsStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class AnalysePostsStateLoadInProgress implements AnalysePostsState {
  const factory AnalysePostsStateLoadInProgress() =
      _$AnalysePostsStateLoadInProgress;
}

/// @nodoc
abstract class $AnalysePostsStateLoadSuccessCopyWith<$Res> {
  factory $AnalysePostsStateLoadSuccessCopyWith(
          AnalysePostsStateLoadSuccess value,
          $Res Function(AnalysePostsStateLoadSuccess) then) =
      _$AnalysePostsStateLoadSuccessCopyWithImpl<$Res>;
  $Res call({SentimentEntity sentiment});
}

/// @nodoc
class _$AnalysePostsStateLoadSuccessCopyWithImpl<$Res>
    extends _$AnalysePostsStateCopyWithImpl<$Res>
    implements $AnalysePostsStateLoadSuccessCopyWith<$Res> {
  _$AnalysePostsStateLoadSuccessCopyWithImpl(
      AnalysePostsStateLoadSuccess _value,
      $Res Function(AnalysePostsStateLoadSuccess) _then)
      : super(_value, (v) => _then(v as AnalysePostsStateLoadSuccess));

  @override
  AnalysePostsStateLoadSuccess get _value =>
      super._value as AnalysePostsStateLoadSuccess;

  @override
  $Res call({
    Object? sentiment = freezed,
  }) {
    return _then(AnalysePostsStateLoadSuccess(
      sentiment == freezed
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as SentimentEntity,
    ));
  }
}

/// @nodoc
class _$AnalysePostsStateLoadSuccess implements AnalysePostsStateLoadSuccess {
  const _$AnalysePostsStateLoadSuccess(this.sentiment);

  @override
  final SentimentEntity sentiment;

  @override
  String toString() {
    return 'AnalysePostsState.loadSuccess(sentiment: $sentiment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AnalysePostsStateLoadSuccess &&
            (identical(other.sentiment, sentiment) ||
                const DeepCollectionEquality()
                    .equals(other.sentiment, sentiment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sentiment);

  @JsonKey(ignore: true)
  @override
  $AnalysePostsStateLoadSuccessCopyWith<AnalysePostsStateLoadSuccess>
      get copyWith => _$AnalysePostsStateLoadSuccessCopyWithImpl<
          AnalysePostsStateLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(SentimentEntity sentiment) loadSuccess,
    required TResult Function(AnalysePostsByTextFailure failure) loadFailure,
  }) {
    return loadSuccess(sentiment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(SentimentEntity sentiment)? loadSuccess,
    TResult Function(AnalysePostsByTextFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(sentiment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysePostsStateStarted value) started,
    required TResult Function(AnalysePostsStateLoadInProgress value)
        loadInProgress,
    required TResult Function(AnalysePostsStateLoadSuccess value) loadSuccess,
    required TResult Function(AnalysePostsStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysePostsStateStarted value)? started,
    TResult Function(AnalysePostsStateLoadInProgress value)? loadInProgress,
    TResult Function(AnalysePostsStateLoadSuccess value)? loadSuccess,
    TResult Function(AnalysePostsStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class AnalysePostsStateLoadSuccess implements AnalysePostsState {
  const factory AnalysePostsStateLoadSuccess(SentimentEntity sentiment) =
      _$AnalysePostsStateLoadSuccess;

  SentimentEntity get sentiment => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalysePostsStateLoadSuccessCopyWith<AnalysePostsStateLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysePostsStateLoadFailureCopyWith<$Res> {
  factory $AnalysePostsStateLoadFailureCopyWith(
          AnalysePostsStateLoadFailure value,
          $Res Function(AnalysePostsStateLoadFailure) then) =
      _$AnalysePostsStateLoadFailureCopyWithImpl<$Res>;
  $Res call({AnalysePostsByTextFailure failure});

  $AnalysePostsByTextFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$AnalysePostsStateLoadFailureCopyWithImpl<$Res>
    extends _$AnalysePostsStateCopyWithImpl<$Res>
    implements $AnalysePostsStateLoadFailureCopyWith<$Res> {
  _$AnalysePostsStateLoadFailureCopyWithImpl(
      AnalysePostsStateLoadFailure _value,
      $Res Function(AnalysePostsStateLoadFailure) _then)
      : super(_value, (v) => _then(v as AnalysePostsStateLoadFailure));

  @override
  AnalysePostsStateLoadFailure get _value =>
      super._value as AnalysePostsStateLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(AnalysePostsStateLoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AnalysePostsByTextFailure,
    ));
  }

  @override
  $AnalysePostsByTextFailureCopyWith<$Res> get failure {
    return $AnalysePostsByTextFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$AnalysePostsStateLoadFailure implements AnalysePostsStateLoadFailure {
  const _$AnalysePostsStateLoadFailure(this.failure);

  @override
  final AnalysePostsByTextFailure failure;

  @override
  String toString() {
    return 'AnalysePostsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AnalysePostsStateLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $AnalysePostsStateLoadFailureCopyWith<AnalysePostsStateLoadFailure>
      get copyWith => _$AnalysePostsStateLoadFailureCopyWithImpl<
          AnalysePostsStateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(SentimentEntity sentiment) loadSuccess,
    required TResult Function(AnalysePostsByTextFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(SentimentEntity sentiment)? loadSuccess,
    TResult Function(AnalysePostsByTextFailure failure)? loadFailure,
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
    required TResult Function(AnalysePostsStateStarted value) started,
    required TResult Function(AnalysePostsStateLoadInProgress value)
        loadInProgress,
    required TResult Function(AnalysePostsStateLoadSuccess value) loadSuccess,
    required TResult Function(AnalysePostsStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysePostsStateStarted value)? started,
    TResult Function(AnalysePostsStateLoadInProgress value)? loadInProgress,
    TResult Function(AnalysePostsStateLoadSuccess value)? loadSuccess,
    TResult Function(AnalysePostsStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class AnalysePostsStateLoadFailure implements AnalysePostsState {
  const factory AnalysePostsStateLoadFailure(
      AnalysePostsByTextFailure failure) = _$AnalysePostsStateLoadFailure;

  AnalysePostsByTextFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalysePostsStateLoadFailureCopyWith<AnalysePostsStateLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}

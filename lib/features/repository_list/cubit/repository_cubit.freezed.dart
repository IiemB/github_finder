// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repository_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepositoryStateTearOff {
  const _$RepositoryStateTearOff();

  Initial initial(String data) {
    return Initial(
      data,
    );
  }

  Loading loading() {
    return const Loading();
  }

  FetchedData fetchedData(List<RepositoryModel> repositories) {
    return FetchedData(
      repositories,
    );
  }

  Error error(String errorMessage) {
    return Error(
      errorMessage,
    );
  }
}

/// @nodoc
const $RepositoryState = _$RepositoryStateTearOff();

/// @nodoc
mixin _$RepositoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) initial,
    required TResult Function() loading,
    required TResult Function(List<RepositoryModel> repositories) fetchedData,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function()? loading,
    TResult Function(List<RepositoryModel> repositories)? fetchedData,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function()? loading,
    TResult Function(List<RepositoryModel> repositories)? fetchedData,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryStateCopyWith<$Res> {
  factory $RepositoryStateCopyWith(
          RepositoryState value, $Res Function(RepositoryState) then) =
      _$RepositoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepositoryStateCopyWithImpl<$Res>
    implements $RepositoryStateCopyWith<$Res> {
  _$RepositoryStateCopyWithImpl(this._value, this._then);

  final RepositoryState _value;
  // ignore: unused_field
  final $Res Function(RepositoryState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({String data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$RepositoryStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Initial(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final String data;

  @override
  String toString() {
    return 'RepositoryState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initial &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) initial,
    required TResult Function() loading,
    required TResult Function(List<RepositoryModel> repositories) fetchedData,
    required TResult Function(String errorMessage) error,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function()? loading,
    TResult Function(List<RepositoryModel> repositories)? fetchedData,
    TResult Function(String errorMessage)? error,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function()? loading,
    TResult Function(List<RepositoryModel> repositories)? fetchedData,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RepositoryState {
  const factory Initial(String data) = _$Initial;

  String get data;
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$RepositoryStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'RepositoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) initial,
    required TResult Function() loading,
    required TResult Function(List<RepositoryModel> repositories) fetchedData,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function()? loading,
    TResult Function(List<RepositoryModel> repositories)? fetchedData,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function()? loading,
    TResult Function(List<RepositoryModel> repositories)? fetchedData,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements RepositoryState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FetchedDataCopyWith<$Res> {
  factory $FetchedDataCopyWith(
          FetchedData value, $Res Function(FetchedData) then) =
      _$FetchedDataCopyWithImpl<$Res>;
  $Res call({List<RepositoryModel> repositories});
}

/// @nodoc
class _$FetchedDataCopyWithImpl<$Res>
    extends _$RepositoryStateCopyWithImpl<$Res>
    implements $FetchedDataCopyWith<$Res> {
  _$FetchedDataCopyWithImpl(
      FetchedData _value, $Res Function(FetchedData) _then)
      : super(_value, (v) => _then(v as FetchedData));

  @override
  FetchedData get _value => super._value as FetchedData;

  @override
  $Res call({
    Object? repositories = freezed,
  }) {
    return _then(FetchedData(
      repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<RepositoryModel>,
    ));
  }
}

/// @nodoc

class _$FetchedData implements FetchedData {
  const _$FetchedData(this.repositories);

  @override
  final List<RepositoryModel> repositories;

  @override
  String toString() {
    return 'RepositoryState.fetchedData(repositories: $repositories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchedData &&
            const DeepCollectionEquality()
                .equals(other.repositories, repositories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(repositories));

  @JsonKey(ignore: true)
  @override
  $FetchedDataCopyWith<FetchedData> get copyWith =>
      _$FetchedDataCopyWithImpl<FetchedData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) initial,
    required TResult Function() loading,
    required TResult Function(List<RepositoryModel> repositories) fetchedData,
    required TResult Function(String errorMessage) error,
  }) {
    return fetchedData(repositories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function()? loading,
    TResult Function(List<RepositoryModel> repositories)? fetchedData,
    TResult Function(String errorMessage)? error,
  }) {
    return fetchedData?.call(repositories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function()? loading,
    TResult Function(List<RepositoryModel> repositories)? fetchedData,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (fetchedData != null) {
      return fetchedData(repositories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Error value) error,
  }) {
    return fetchedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Error value)? error,
  }) {
    return fetchedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (fetchedData != null) {
      return fetchedData(this);
    }
    return orElse();
  }
}

abstract class FetchedData implements RepositoryState {
  const factory FetchedData(List<RepositoryModel> repositories) = _$FetchedData;

  List<RepositoryModel> get repositories;
  @JsonKey(ignore: true)
  $FetchedDataCopyWith<FetchedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$RepositoryStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(Error(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'RepositoryState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) initial,
    required TResult Function() loading,
    required TResult Function(List<RepositoryModel> repositories) fetchedData,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function()? loading,
    TResult Function(List<RepositoryModel> repositories)? fetchedData,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function()? loading,
    TResult Function(List<RepositoryModel> repositories)? fetchedData,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements RepositoryState {
  const factory Error(String errorMessage) = _$Error;

  String get errorMessage;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
